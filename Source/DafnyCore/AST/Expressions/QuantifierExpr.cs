using System;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Linq;

namespace Microsoft.Dafny;

public abstract class QuantifierExpr : ComprehensionExpr, TypeParameter.ParentType {
  public override string WhatKind => "quantifier";

  private readonly int UniqueId;
  private static int currentQuantId = -1;

  protected virtual BinaryExpr.ResolvedOpcode SplitResolvedOp { get { return BinaryExpr.ResolvedOpcode.Or; } }

  private Expression SplitQuantifierToExpression() {
    Contract.Requires(SplitQuantifier != null && SplitQuantifier.Any());
    Expression accumulator = SplitQuantifier[0];
    for (int tid = 1; tid < SplitQuantifier.Count; tid++) {
      accumulator = new BinaryExpr(Term.tok, SplitResolvedOp, accumulator, SplitQuantifier[tid]);
    }
    return accumulator;
  }

  private List<Expression> _SplitQuantifier;
  public List<Expression> SplitQuantifier {
    get {
      return _SplitQuantifier;
    }
    set {
      Contract.Assert(!value.Contains(this)); // don't let it put into its own split quantifiers.
      _SplitQuantifier = value;
      SplitQuantifierExpression = SplitQuantifierToExpression();
    }
  }

  internal Expression SplitQuantifierExpression { get; private set; }

  static int FreshQuantId() {
    return System.Threading.Interlocked.Increment(ref currentQuantId);
  }

  public string FullName {
    get {
      return "q$" + UniqueId;
    }
  }

  public String Refresh(string prefix, FreshIdGenerator idGen) {
    return idGen.FreshId(prefix);
  }

  public TypeParameter Refresh(TypeParameter p, FreshIdGenerator idGen) {
    var cp = new TypeParameter(p.tok, idGen.FreshId(p.Name + "#"), p.VarianceSyntax, p.Characteristics);
    cp.Parent = this;
    return cp;
  }
  public QuantifierExpr(IToken tok, IToken endTok, List<BoundVar> bvars, Expression range, Expression term, Attributes attrs)
    : base(tok, endTok, bvars, range, term, attrs) {
    Contract.Requires(tok != null);
    Contract.Requires(cce.NonNullElements(bvars));
    Contract.Requires(term != null);
    this.UniqueId = FreshQuantId();
  }

  public virtual Expression LogicalBody(bool bypassSplitQuantifier = false) {
    // Don't call this on a quantifier with a Split clause: it's not a real quantifier. The only exception is the Compiler.
    Contract.Requires(bypassSplitQuantifier || SplitQuantifier == null);
    throw new cce.UnreachableException(); // This body is just here for the "Requires" clause
  }

  public override IEnumerable<Expression> SubExpressions {
    get {
      if (SplitQuantifier == null) {
        foreach (var e in base.SubExpressions) {
          yield return e;
        }
      } else {
        foreach (var e in Attributes.SubExpressions(Attributes)) {
          yield return e;
        }
        foreach (var e in SplitQuantifier) {
          yield return e;
        }
      }
    }
  }
}