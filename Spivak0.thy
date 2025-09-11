theory Spivak0
  imports Main
begin

(* Teams: *)
(* Hadi, Jia-Yi *)
(* George, Jackson *)
(* An, Oliver *)
(* Yali, Luke, Nick *)

typedecl r (* proxy for reals *)

consts 
  addition::"r \<Rightarrow> r \<Rightarrow> r"
  multiplication::"r \<Rightarrow> r \<Rightarrow> r"
  negation::"r \<Rightarrow> r"
  reciprocal::"r \<Rightarrow> r"
  Z::"r"  (* proxy for zero *)
  U::"r"  (* proxy for one (or 'unit') *)
  P::"r set"

notation addition (infix "\<oplus>" 60)
notation multiplication (infix "\<odot>" 80)
notation negation (\<open>(\<open>open_block notation=\<open>prefix -\<close>\<close>\<diamondop> _)\<close> [91] 90)

proposition addition_associative:(* P1 *)
  shows "a \<oplus> (b \<oplus> c) = (a \<oplus> b) \<oplus> c"
  sorry

(* Hadi, Jia-yi *)
lemma addition_four_terms: (* show eqn 2 on p 3 is the same as eq 3 *)
  shows "a \<oplus> ..."
  sorry

proposition additive_identity: (*P2*)
  shows "a \<oplus> Z = a" and "Z \<oplus> a = a"
  sorry

proposition additive_inverse: (*P3*)
  shows "a \<oplus> (\<diamondop> a) = Z" and "(\<diamondop> a) \<oplus> a = Z"
  sorry

(* George, Jackson *)
lemma unique_zero: (*p 4, "Indeed, if a number x satisfies.." about 3/4 down the page *)
  assumes "a ..."
  sorry

definition subtraction::"r \<Rightarrow> r \<Rightarrow> r" where "subtraction a b = a  \<oplus> (negation b)" 

notation subtraction (infix "\<ominus>" 60)

(* An, Oliver *)
(*p 5. write that displayed solution of x + 3 = 5 as a solution of x + a = b *)
lemma equation_solve_1:
  fixes a b
  sorry

proposition addition_commutative: (*P4*)
  shows "a \<oplus> b = b \<oplus> a"
  sorry

proposition multiplication_associative:(* P5 *)
  shows "a \<odot> (b \<odot> c) = (a \<odot> b) \<odot> c"
  sorry

proposition multiplicative_identity: (*P6*)
  shows "a \<odot> U = a" and "U \<odot> a = a" 
  sorry

proposition zero_not_one: (*P6A*)
  shows "U \<noteq> Z" 
  sorry

proposition multiplicative_inverse: (*P7*)
  fixes a
  assumes "a \<noteq> Z"
  shows "a \<odot> (reciprocal a) = U" and "(reciprocal a) \<odot> a = U"
  sorry

(* Yali, Nick, Luke *)
(* show that there's a unique multiplicative identity, and if it's
an identity for ANY product with a nonzero number, it's an identity 
for all numbers *)
lemma unique_one:
  sorry

proposition multiplication_commutative: (*P8*)
  shows "a \<odot> b = b \<odot> a"
  sorry

(* Hadi, Jia-Yi *)
lemma divide_common_factor: (* ab = ac implies b = c under some condition *)
  fixes a b c

(* An, Oliver *)
lemma mul_zero: (* zero times anything is zero *)
  fixes a 
  sorry

(* Yali, Luke, Nick *)
lemma zero_one_diff: (* zero is different from one *)
  sorry

(* George, Jackson *)
lemma zero_product_zero_factor: (* if ab = 0, then either a or b is zero, or both are *)
  fixes a b
  sorry

proposition distributive: (*P9*)
  shows "a \<odot> (b \<oplus> c) = (a \<odot> b) \<oplus> (a \<odot> c)"
  sorry

(* An, Oliver *)
lemma equal_diffs: (*P 7, near top;  if a-b and b-a are equal, then...*)
  fixes a b
  assumes "a \<ominus> b = b \<ominus> a"
  shows "a = b"
  sorry

(* Yali, Luke, Nick *)
lemma inverse_product_1: (* P7, near bottom: -ab = ... *)
(* remember that "-a" is written "\<diamondop> a"*)]
  sorry

(* Yali, Luke, Nick *)
 (* P7 near bottom: (-a)(-b) = ... *)
(* remember that "-a" is written "\<diamondop> a"*)]
lemma inverse_product_2:
  shows "(\<diamondop> a) \<odot> (\<diamondop> b) =  (a \<odot> b)"
  sorry

proposition trichotomy: (*P10*)
  fixes a
  shows 
    "((a = Z) \<and> (a \<notin> P) \<and> ((\<diamondop> a) \<notin> P)) \<or>  
     ((a \<noteq> Z) \<and> (a \<in> P) \<and> ((\<diamondop> a) \<notin> P)) \<or>
     ((a \<noteq> Z) \<and> (a \<notin> P) \<and> ((\<diamondop> a) \<in> P))"
  sorry

proposition positive_product: (* P12 *)
  fixes a b
  assumes "a \<in> P" and "b \<in> P"
  shows "a \<odot> b \<in> P"
  sorry


end