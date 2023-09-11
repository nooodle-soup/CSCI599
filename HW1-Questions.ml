(***************************************************************************************************
Homework 1
==========
CSCI 599, Fall 2023: An Introduction to Programming Languages
Mukund Raghothaman
Due: 10pm PT on 18 September, 2023
***************************************************************************************************)

(***************************************************************************************************
- Your name: Vineet Agarwal 
- Your partner's name (if any): __________
***************************************************************************************************)

(***************************************************************************************************
Instructions
------------
1. Please setup your programming environment by following the steps outlined in the cheatsheet and
   on the course website.
2. Please feel free to collaborate with a partner, but make sure to write your submission
   individually.
3. Rename this file to HW1-yourname.ml, where yourname is your name, before submitting it on
   Blackboard.
4. Make sure that we can cleanly import this file into the OCaml toplevel when I call
   #use "HW1-yourname.ml". Comment out any questions you were unable to solve / have left
   unanswered.
***************************************************************************************************)

exception NotImplemented

(** Distribution of points:
    5 + (2 + 5) + (4 + 4) + (5 + 2 + 3) + (2 + 3) + 5 + 10 + (5 + 5) + (4 + 6 + 10) + (4 + 6) =
      90 points *)

(**************************************************************************************************)
(* Question 1: Starting Off (5 points)

   Predict the types of the following expressions and their results upon evaluation. Explain your
   reasoning for each expression in a sentence or two. *)

let _ = 5 + 3 - 2
(* - : int = 0 *)
(* Explanation: 5, 3, 2 are all integers and + and - are integer operators*)

let _ = 2. ** 0.5
(* - : float = 1.4142135623730951 *)
(* Explanation: The float 2. is raised to the power of 0.5 (a float) and the value is
 returned which is also a float *)

let _ = [1; 2; 3] @ [4; 5; 6]
(* - : int list = [1; 2; 3; 4; 5; 6] *)
(* Explanation: Both lists are integer lists and the concatenate operator (@)
joins them both to form an int list *)

let _ = ("abc" ^ "def").[3]
(* - : char = 'd' *)
(* Explanation: The ^ operator concatenates both strings and then the .[3]
indexing operation returns the 3rd index character in the string *)

let _ = fun x -> x + 1
(* - : int -> int = <fun> *)
(* Explanation: The fun keyword creates a lambda function that takes in an integer
 and returns on integer. The values are both ints because the operater ( + ) is
 an integer operation and 1 is an integer, so it follows that x has to be an
 integer *)

let _ = (fun x -> x + 1) 5
(* - : int = 6 *)
(* Explanation: The fun keyword creates a lambda function just like above,
 but in this expression, a value of 5 is also passed to it which evaluates to 6 *)

let _ = (fun x y -> x + (3 - y)) 4
(* - : int -> int = <fun> *)
(* Explanation: This expression evaluates to a closure which accepts an integer,
 subtracts it from 3 and then adds that value to 4, returning an integer *)

let _ = Float.of_int
(* - : float -> int = <fun> *)
(* Explanation: This creates a closure that takes in a float value and returns
 an integer value as the Float.of_int function accepts a float and returns an
 integer *)

let _ = List.map Float.of_int [1; 2; 3; 4; 5; 6]
(* - : float list = [1.; 2.; 3.; 4.; 5.; 6.] *)
(* Explanation: Thu function List.map takes in a function followed by a list. 
 Then for each value in the list, it applies the function Float.of_int and
 returns the new list of floats *)

let _ = (fun f x y -> f y x) ( - ) 2 3
(* - : int = -1 *)
(* Explanation: The lambda function takes in a function and two values to
 use as arguments for that function. Here it takes the integer subtraction operator
 ( - ) and then passes the arguments 2 and 3. The operator behaves as a function
 and returns the value of 2 - 3 which is an integer *)

(**************************************************************************************************)
(* Question 2: Writing Simple Expressions (2 + 5 points) *)

(* 2a. Recall the formula for the solutions of a quadratic equation a * x ** 2 + b * x + c = 0:

       (-b +/- sqrt(b ** 2 - 4 * a * c)) / (2 * a).

       The quantity b ** 2 - 4 * a * c is called the discriminant. When a, b and c are real numbers,
       the roots are real-valued iff the discriminant is non-negative.

       Write a function solveQuad : float -> float -> float -> (float * float) option which returns
       the real-valued roots of a quadratic equation, if they exist.

       In the following declaration, replace the call to raise with your implementation. *)

let solveQuad : float -> float -> float -> (float * float) option =
  fun a b c -> 
      let discriminant = (b ** 2.) -. (4. *. a *. c) in
      if (discriminant < 0.) then 
          let root1 = (-1. *. b) +. discriminant in
          let root2 = (-1. *. b) -. discriminant in
          Some (root1, root2)
      else None
      

(****)
(* 2b. For a given initial positive integer value n1, the Collatz sequence n1, n2, n3, ... is
       defined as follows:

       n{i + 1} = ni / 2, if ni is even, and
                  3 * ni + 1, otherwise.

       For example, for n1 = 3, the sequence is 3, 10, 5, 16, 8, 4, 2, 1, 4, 2, 1, 4, 2, 1, ..., and
                    for n1 = 12, the sequence is 12, 6, 3, 10, 5, 16, 8, 4, 2, 1, ...

       The famous Collatz conjecture states that regardless of the initial value n1, the sequence
       always eventually reaches 1.

       Write a function collatzLen : int -> int such that collatzLen n1 is the number of elements in
       the Collatz sequence before attaining the value 1. For example, collatzLen 3 = 7,
       collatzLen 12 = 9, and collatzLen 1 = 0.

       For full credit, make sure that your implementation is tail-recursive. *)

let collatzLen : int -> int =
  fun n -> raise NotImplemented

(* Explain your solution: ______________ *)

(**************************************************************************************************)
(* Question 3: Type Inhabitation (4 + 4 points)

   3a. Provide examples of expressions with the following types. Uncomment your responses after
       filling them in.

let e3a1 : int = raise NotImplemented

let e3a2 : int list = raise NotImplemented

let e3a3 : int list -> int = raise NotImplemented

let e3a4 : 'a -> ('a -> 'b) -> 'b = raise NotImplemented

let e3a5 : ('a -> 'b -> 'c) -> 'a * 'b -> 'c = raise NotImplemented

let e3a6 : ('a * 'b -> 'c) -> 'a -> 'b -> 'c = raise NotImplemented

let e3a7 : ('a, 'b) Either.t -> ('a -> 'b) -> 'b = raise NotImplemented

let e3a8 : ('a * 'b) -> ('a, 'b) Either.t = raise NotImplemented *)

(****)
(* 3b. Provide examples of expressions e so that the following expressions are well-typed:

let e3b1 =
  let e = raise NotImplemented in
  3 + e

let e3b2 =
  let e = raise NotImplemented in
  3 + (e 3.2)

let e3b3 =
  let e = raise NotImplemented in
  (e [1; 2; 3]) + 2

let e3b4 =
  let e = raise NotImplemented in
  (fun x -> x 0) e *)

(**************************************************************************************************)
(* Question 4: Type Design (5 + 2 + 3 points)

   Your instructor, M, recently adopted a pair of cats, Eddie and Bergin, who are best friends with
   each other. See https://r-mukund.github.io/images/eb.jpg for a picture of them. Unfortunately,
   these are also his first pets. He doesn't know much about cats, what food and how much they eat,
   and what they should play with. He visits his neighborhood pet store, and spots several items on
   the shelves. The items are either food stuffs (each of these has a calorie value and a price) or
   toys (each of these only has a price).

   4a. Design an algebraic data type to describe each item in the store's inventory: *)

type item = unit (* Replace unit with your solution. *)

(*     Write two functions, makeFood and makeToy, which make a corresponding value of type item: *)

let makeFood : int -> int -> item =
  fun calories price -> raise NotImplemented

let makeToy : int -> item =
  fun price -> raise NotImplemented

(****)
(* 4b. M, of course, wants to give his new pet cats the happiest lives possible. Write a function
       that calculates the total price of the store's inventory. *)

let totalPrice : item list -> int =
  fun l -> raise NotImplemented

(*     Explain your solution: ____________ *)

(****)
(* 4c. M also wants his cats to be healthy, and sadly suddenly realizes that faculty salaries are
       not comparable to those in the industry. Given a daily calorie target, find the smallest
       price he can expect to pay each month to keep his cats well-fed? *)

let cheapestDiet : item list -> int -> int option =
  fun l target -> raise NotImplemented

(*     Assume that there is only one of each item in the inventory. If there is insufficient food to
       adequately feed Eddie and Bergin, report None.

       Explain your solution: ____________ *)

(**************************************************************************************************)
(* Question 5: Evaluation Order (2 + 3 points)

   5a. Dr. Nefario is building the device that will allow him and Gru to steal the Moon. He needs to
       do lots of calculations, but is tired of divide-by-zero causing OCaml to complain. He decides
       to settle the matter once and for all, and declares: "When you divide by zero, the result is
       zero!" He writes the following function: *)

let safeDivideIncorrect =
  fun a b -> let ans = a / b in if b <> 0 then ans else 0

(*     but to his horror, safeDivideIncorrect 3 0 continues to raise an error.

       Explain why: ______________

       Help Dr. Nefario correctly implement safeDivide: *)

let safeDivideCorrect =
  fun a b -> raise NotImplemented

(****)
(* 5b. What gets printed to the screen when evaluating the following expressions? *)

let e5b1 =
  if (print_endline "condition"; true)
  then (print_endline "then"; 0)
  else (print_endline "else"; 1)

(*     Answer: ______________
       Explain: _____________ *)

let e5b2 =
  (print_endline "left"; 3 < 4) && (print_endline "right"; 2 < 3)

(*     Answer: ______________
       Explain: _____________ *)

let e5b3 =
  (print_endline "left"; 4 < 3) && (print_endline "right"; 2 < 3)

(*     Answer: ______________
       Explain: _____________ *)

(**************************************************************************************************)
(* Question 6: Higher-Order Functions (5 points)

   The integral of a function f between two points a and b is defined as (f a + f (a + epsilon) +
   f (a + 2 * epsilon) + ... + f (a + k * epsilon)) * epsilon, where epsilon > 0 is a small real
   number, and k is the largest integer such that a + k * epsilon <= b.

   Write an expression (integral f a b epsilon) which computes the integral of f between a and b
   with interval size epsilon: *)

let integral =
  fun (f : float -> float) (a : float) (b : float) (epsilon : float) ->
    raise NotImplemented

(* What is its type? ______________ *)

(* Explain your implementation: ______________ *)

(****)
(* BONUS: Solve Exercise 2.6 of the SICP textbook. This exercise will introduce you to Church
   numerals, and is an excellent example of the power of higher-order functions. *)

(**************************************************************************************************)
(* Question 7: One Nontrivial Algorithm (10 points)

   A binary search tree is defined as follows: *)

type tree = Leaf
          | Node of int * tree * tree
          [@@deriving show]

(* with the invariant that all numbers in the left subtree are strictly less than the value at the
   root, and all numbers in the right subtree are strictly greater than the value at the root: *)

let is_bst : tree -> bool =
  fun t ->
    let rec bounds l t h =
      match t with
      | Leaf -> true
      | Node(n, t1, t2) -> (l < n) &&
                           bounds l t1 n &&
                           bounds n t2 h &&
                           (n < h)
    in bounds min_int t max_int

(* Write a function merge : tree -> tree -> tree which merges two binary search trees into a single
   tree containing all numbers in either of the input trees: *)

let merge : tree -> tree -> tree =
  fun t1 t2 -> raise NotImplemented

(* Explain your implementation: ______________ *)

(**************************************************************************************************)
(* Question 8: Run-Length Encoding and Decoding (5 + 5 points)

   The run-length encoding is a simple lossless algorithm for data compression, and was sometimes
   used in fax machines. The idea is to encode a sequence of repeated data items by its length. For
   example, the sequence ['a'; 'a'; 'b'; 'c'; 'c'; 'c'; 'a'] as the sequence [('a', 2); ('b', 1);
   ('c', 3); ('a', 1)], indicating that the element 'a' occurs thrice, followed by a single
   occurrence of 'b', and then by three occurrences of 'c' and one occurrence of 'a', in that order.

   Write two functions, encode : 'a list -> ('a * int) list, and decode : ('a * int) list ->
   'a list, which apply run-length compression to a sequence of data items and recover them
   respectively. Among other properties, ensure that for all lists l, decode (encode l) = l. *)

let encode (l : 'a list) : ('a * int) list =
  raise NotImplemented

(* Explain: ______________ *)

let decode (l : ('a * int) list) : 'a list =
  raise NotImplemented

(* Explain: ______________ *)

(**************************************************************************************************)
(* Question 9: Implementing Tail Recursive Functions (4 + 6 + 10 points) *)

(* 9a. Students are commonly introduced to recursion using the Fibonacci function: *)

let rec fib1 : int -> int =
  fun n -> if n = 0 then 0
           else if n = 1 then 1
           else fib1 (n - 1) + fib1 (n - 2)

(*     This function is not tail recursive. Why?
       ______________ *)

(*     Write an alternative tail recursive implementation of the Fibonacci function: *)

let fib2 : int -> int =
  fun n -> raise NotImplemented

(*     Explain: ______________ *)

(*     Evaluate fib1 50 and fib2 50. What do you observe? Why?
       ______________ *)

(****)
(* 9b. (fold_right) Recall the definitions of fold_left and fold_right: *)

let rec fold_left =
  fun f acc l ->
    match l with
    | [] -> acc
    | hd :: tl -> fold_left f (f acc hd) tl

let rec fold_right =
  fun f l acc ->
    match l with
    | [] -> acc
    | hd :: tl -> f hd (fold_right f tl acc)

(*     As we will discuss in class, fold_left induces a left-to-right flow of data over the list,
       while fold_right induces the right-to-left flow of data.

       Now, observe that the reference implementation of fold_left is tail-recursive, while
       fold_right is not tail-recursive. Why?
       ______________ *)

(*     Write a tail-recursive implementation of the fold_right function. Ensure that your
       implementation works as a drop-in replacement for the traditional fold_right implementation
       shown above. *)

let fold_right2 (f : 'a -> 'b -> 'b) (l : 'a list) (acc : 'b) : 'b =
  raise NotImplemented

(*     Explain your solution: ______________ *)

(*     HINT: The main difference between fold_left and fold_right is in the direction of data flow.
       The list reversal function (rev : 'a list -> 'a list) is another function which similarly
       swaps the order of data.
       1. Can you write an implementation of rev which is tail-recursive?
       2. Can you use rev as a building block for a tail-recursive fold_right? *)

(****)
(* 9c. (CHALLENGE PROBLEM) Recall the traditional approach to perform an in-order traversal of a
       tree t: *)

let rec inorder1 : tree -> int list =
  fun t ->
    match t with
    | Leaf -> []
    | Node(a, tl, tr) -> (inorder1 tl) @ [ a ] @ (inorder1 tr)

(*     Observe that inorder1 is not tail-recursive. Why?
       ______________ *)

(*     Implement an equivalent tail-recursive version inorder2 : tree -> int list. *)

let inorder2 : tree -> int list =
  fun t -> raise NotImplemented

(*     Explain your solution: ______________ *)

(*     This question might be the most difficult problem in this homework assignment, but captures
       the essence of why _any_ computation can be expressed using tail recursive calls.

       HINT: How would you implement in-order traversal in your favorite imperative language,
       without recursion? *)

(**************************************************************************************************)
(* Question 10: Expression Evaluator (4 + 6 points)

   In this question, we will implement our first interpreters for an extremely simple language of
   arithmetic expressions. Consider the type expr1 of arithmetic expressions defined as follows: *)

type expr1 = Int1 of int
           | Plus1 of expr1 * expr1
           | Minus1 of expr1 * expr1
           | Mult1 of expr1 * expr1
           [@@deriving show]

(* For example, the value Plus1(Int1 3, Int1 8) represents the expression (3 + 8) which, when
   evaluated, produces the result 11. The base constructor Int1 constructs an expression out of an
   integer value, while the Plus1, Minus1 and Mult1 constructors encode the addition, subtraction
   and multiplication operations respectively.

   10a. Write a function eval1 : expr1 -> int which produces the result of evaluating an
        expression. *)

let eval1 : expr1 -> int =
  fun e -> raise NotImplemented

(*      Next, we extend the type expr1 of expressions with constructors that encode variables and
        let expressions. The following type expr2 is just like expr1, except that the expression
        (Let2 "x" (Int2 3) (Plus2(Var2 "x", Var2 "x"))) stands for the OCaml expression (let x = 3
        in x + x). As in OCaml, variables are statically scoped. *)

type expr2 = Int2 of int
           | Plus2 of expr2 * expr2
           | Minus2 of expr2 * expr2
           | Mult2 of expr2 * expr2
           | Var2 of string
           | Let2 of string * expr2 * expr2
           [@@deriving show]

(****)
(* 10b. Write a function (eval2 : expr2 -> int option) which returns the result of evaluating an
        expression, if it is defined.

        You will find it useful to maintain a map from variable names to bound values. We invoke the
        following magic incantation to start you off: *)

module StringMap = Map.Make(String)
let empty_map = StringMap.empty

(*     To bind a key k to a value v, write (StringMap.add k v m). For example: *)

let m1 = StringMap.add "x" 3 empty_map

(*     To check if a map m contains a key k, write (StringMap.find_opt k m). For example,
       (StringMap.find_opt "x" m1) evaluates to Some 3, and (StringMap.find_opt "y" m1) evaluates to
       None.

       Note that maps are immutable objects: the result of evaluating StringMap.add is a new map
       with the desired key-value association; the original map is unaltered. For example,
       (StringMap.find_opt "x" empty_map) still evaluates to None. *)

let eval2 (e : expr2) : int option = raise NotImplemented

(*     Explain your solution: ______________ *)

(**************************************************************************************************)
(* Question 11: Conclusion (0 points)

   Did you use an LLM to solve this assignment? How did it help?
   ____________ *)
