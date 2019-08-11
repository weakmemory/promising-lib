Require Import Orders.
Require Import Omega.
Require Import Coq.Logic.PropExtensionality.

From sflib Require Import sflib.

Require Import DataStructure.
Require Import Basic.

Set Implicit Arguments.


Module Loc := Ident.
Module LocSet := IdentSet.
Module LocMap := IdentMap.
Module LocFun := IdentFun.


(* finite location *)
Module FLoc <: UsualDecidableType.
  Definition max := Pos.pow 2 64.
  Global Opaque max.

  Structure t' := mk {
    loc :> Loc.t;
    RANGE: Pos.le loc max;
  }.

  Definition t := t'.

  Definition eq := (@eq t).

  Global Program Instance eq_equiv: Equivalence eq.

  Lemma eq_dec: forall x y: t, {x = y} + {x <> y}.
  Proof.
    i. destruct x, y.
    destruct (Ident.eq_dec loc0 loc1).
    - left. subst. f_equal.
      apply proof_irrelevance.
    - right. ii. inv H. ss.
  Qed.

  Program Definition of_string (str: String.string): t :=
    @mk _ _.
  Next Obligation.
  Admitted.
  Next Obligation.
  Admitted.

  Lemma finite: exists (locs: list t), forall (loc: t), List.In loc locs.
  Proof.
  Admitted.
End FLoc.

Module FLocFun := UsualFun (FLoc).
