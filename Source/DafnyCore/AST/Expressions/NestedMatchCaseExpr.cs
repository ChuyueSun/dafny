using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Linq;

namespace Microsoft.Dafny;

public class NestedMatchCaseExpr : NestedMatchCase, IAttributeBearingDeclaration {
  public readonly Expression Body;
  public Attributes Attributes;
  Attributes IAttributeBearingDeclaration.Attributes => Attributes;

  public NestedMatchCaseExpr(IToken tok, ExtendedPattern pat, Expression body, Attributes attrs) : base(tok, pat) {
    Contract.Requires(body != null);
    this.Body = body;
    this.Attributes = attrs;
  }

  public override IEnumerable<INode> Children => new INode[] { Body, Pat }.Concat(Attributes?.Args ?? Enumerable.Empty<INode>());
}