Set Implicit Arguments.

Module Language.
  Structure t := mk {
    syntax: Type;
    state: Type;

    init: syntax -> state;
    is_terminal: state -> Prop;
    step: forall {E: Type} (e:E) (s1:state) (s2:state), Prop;
  }.
End Language.
