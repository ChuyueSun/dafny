using System.Collections.Generic;
using System.Diagnostics.Contracts;

namespace Microsoft.Dafny;

public class UnchangedExpr : Expression {
  public readonly List<FrameExpression> Frame;
  public readonly string/*?*/ At;
  [FilledInDuringResolution] public Label/*?*/ AtLabel;  // after that, At==null iff AtLabel==null
  [ContractInvariantMethod]
  void ObjectInvariant() {
    Contract.Invariant(Frame != null);
  }

  public UnchangedExpr(IToken tok, List<FrameExpression> frame, string/*?*/ at)
    : base(tok) {
    Contract.Requires(tok != null);
    Contract.Requires(frame != null);
    this.Frame = frame;
    this.At = at;
  }

  public override IEnumerable<Expression> SubExpressions {
    get {
      foreach (var fe in Frame) {
        yield return fe.E;
      }
    }
  }
}