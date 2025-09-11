theory Spivak1
  imports Main
begin

(* Teams: *)
(* Hadi, Jia-Yi *)
(* George, Jackson *)
(* An, Oliver *)
(* Yali, Luke, Nick *)

text\<open> standard line of a proof looks like

  have <name>: "something" using <other-facts> by auto

in some cases "blast" or even "metis" might be useful replacements for "auto",
but I don't think you need them for any of these proofs.,

Final line is similar, but it's almost always
 
 show ?thesis using <facts> by auto

(Note the use of 'show' instead of 'have', and the use of ?thesis to indicate the 
thing you're hoping to prove.)
\<close>
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

lemma addition_four_terms:
  shows "(a \<oplus> (b \<oplus> c)) \<oplus> d = a \<oplus> ((b \<oplus> c) \<oplus> d)"
(* Hadi, Jia-yi *)
  sorry

proposition additive_identity: (*P2*)
  shows "a \<oplus> Z = a" and "Z \<oplus> a = a"
  sorry

proposition additive_inverse: (*P3*)
  shows "a \<oplus> (\<diamondop> a) = Z" and "(\<diamondop> a) \<oplus> a = Z"
  sorry

(* George, Jackson *)
lemma unique_zero:
  assumes "a \<oplus> u = a"
  shows "u = Z"
  sorry

definition subtraction::"r \<Rightarrow> r \<Rightarrow> r" where "subtraction a b = a  \<oplus> (negation b)" 

notation subtraction (infix "\<ominus>" 60)

(* An, Oliver *)
lemma equation_solve_1:
  fixes a b
  assumes "x \<oplus> a = b"
  shows "x = b \<ominus> a"
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
lemma unique_one:
  fixes a
  assumes "a \<noteq> Z"
  assumes "a \<odot> u = a"
  shows "u = U"
  sorry

proposition multiplication_commutative: (*P8*)
  shows "a \<odot> b = b \<odot> a"
  sorry

(* Hadi, Jia-Yi *)
lemma divide_common_factor: 
  fixes a b c
  assumes "a \<noteq> Z"
  assumes "a \<odot> b = a \<odot> c"
  shows "b = c"
  sorry

(* An, Oliver *)
lemma mul_zero:
  fixes a 
  shows "a \<odot> Z = Z"
  sorry

(* Yali, Luke, Nick *)
lemma zero_one_diff:
  shows " Z \<noteq> U"
  sorry

(* George, Jackson *)
lemma zero_product_zero_factor: 
  fixes a b
  assumes "a \<odot> b = Z"
  shows "a = Z \<or> b = Z"
  sorry

proposition distributive: (*P9*)
  shows "a \<odot> (b \<oplus> c) = (a \<odot> b) \<oplus> (a \<odot> c)"
  sorry

(* An, Oliver *)
lemma equal_diffs:
  fixes a b
  assumes "a \<ominus> b = b \<ominus> a"
  shows "a = b"
  sorry

(* Yali, Luke, Nick *)
lemma inverse_product_1:
  shows "(\<diamondop> a) \<odot> b = (\<diamondop> (a \<odot> b))"
  sorry

(* Yali, Luke, Nick *)
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

(* 
TASK: define lt (greater than) and le (greater-than-or-equal
then define gt and ge in terms of these. You'll want to use
logical negation, written \<not> . You could even use "notation" to declare
infix notations for these, like \<prec>, \<preceq>, \<succ>, \<succeq>

Then write out and prove the assertions made on page 10, 
esp the one that says the product of two negatives is positive. 
and the proof that 1 > 0. 

If you're particularly enthusiastic, you could try to formalize one of the two 
proofs of the triangle inequality.
*)

end
