theory class2
  imports Complex_Main
begin

text\<open>A little warmup geometry

An affine plane is a set, whose elements are called 'points', 
and a set of subsets, called 'lines', satisfying 3 axioms. We
say "P lies on k" or "k passes through P" or "k contains P" to 
mean P \<in> k.

A1: Given two distinct points P and Q, there is one and only one
line containing both P and Q

Def: Lines k and m are parallel if the are equal or have no points 
in common. We write k || m.

A2: Given a line l and a point P not on l, there is one and only
one line m which is parallel to l and passes through P

A3: there exist (at least) 3 non-collinear points.
Def: A set of points {P_1, ..., P_n} is collinear if there's a line k
containing all of them. 

Example: the ordinary plane is an affine plane. 
Thm: parallelism is an equivalence relation. 

Prop: two (distinct) lines of A have at most one point in common.

Prop: Any affine plane contains at least 4 points. 

Prop: there is an affine plane with exactly 4 points and 6 lines

Prop (not in Hartshorne): the empty set is not a line.

Def: a "pencil" is either (1) all lines through some point P, or
 (2) all lines parallel to some line. (So a pencil has type "line set")


\<close>
text \<open>
Outer syntax vs inner syntax

Outer syntax building blocks:

Theorem headers: theorem, lemma, proposition

theorem body parts: fixes, assumes, shows

proofs, version 1: "proof ... qed" where "..." is lots of other stuff
proofs version 2: "oops" (forget I ever said anything) or "sorry" 
(I'm not gonna give a proof, but let me pretend that I've done so, 
allowing me to move on with other more interesting things)[dangerous]

theorem header optional name example:
\<close>
theorem
  shows "1 = 1"
  oops

theorem small:
  shows "1 = 1"
  oops
text \<open>
Note that the name must be followed by a colon; if there's no name, there 
must not be a colon. 
Names have to be reasonable: "0small" won't work; "MyTheorem" is strongly
disparaged, but "my_theorem" is OK 

assumptions: as with theorems, you can name them, and you can join 
multiple assumptions with "and"
\<close>
theorem small:
  assumes xy: "x < y"
  assumes yz: "y < z"
  shows "x < z"
  oops

text
\<open>
And in a proof, you can refer to assumptions by name, as in 
\<close>
theorem small:
  assumes xy: "(x::int) < y"
  assumes yz: "y < z"
  shows "x < z"
proof -
  show ?thesis using xy yz by linarith
qed

text \<open>
There are often multiple ways to refer to something -- using its name, using a 
default assigned name, using the text of the fact between "cartouches": \<open>\<close>. 
Here's an example of each of those
\<close>
theorem small2:
  assumes xy: "(x::int) < y"
  assumes yz: "y < z"
  shows "x < z"
proof -
  show ?thesis using assms(1,2) by linarith
qed

theorem small3:
  assumes xy: "(x::int) < y"
  assumes yz: "y < z"
  shows "x < z"
proof -
  show ?thesis using \<open>x < y\<close> \<open>y < z\<close> by linarith
qed



text\<open>
I mostly prefer to use my own names for things, and often (when I'm 
starting out) use the names 0, 1, 2, 3, 4, ...

Digression on cartouches: type " and you'll get a dropdown with three
options. The <box> one inserts the open-and-close marks, and lets
you type between them. 
Typical sequence:
type "text" to indicate you want to insert a text block,
enter a double-quote and pause
select the item that looks like <O> (where the O is a box)
press TAB. 

Proof structure: ignoring the 'throwaway proofs' like this one:
\<close>
theorem throwaway:
  shows "(1::nat) < 2"
  by auto
text\<open>
every proof begins with the word "proof", followed by a proof-method. 
For now this will almost always be "-" (which is a synonym for 
'standard', which does almost nothing)
\<close>
theorem small4:
  assumes xy: "(x::int) < y"
  assumes yz: "y < z"
  shows "x < z"
proof -
  show ?thesis using \<open>x < y\<close> \<open>y < z\<close> by linarith
qed

find_theorems name: "*diff*"

end


