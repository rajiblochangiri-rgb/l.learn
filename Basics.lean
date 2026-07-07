/-
  Basics.lean — tiny Lean 4 examples and exercises

  Save this file and open it in VS Code with the Lean extension.
  You can evaluate expressions with `#eval` and run definitions with `IO.println`.
-/

/-- Simple definitions and evaluation -/

def add (x y : Nat) : Nat := x + y

#eval add 2 3 -- prints 5 in the Lean REPL or when evaluated by the extension

/-- Basic theorems using tactics -/

theorem add_zero (n : Nat) : n + 0 = n := by
  simp

theorem zero_add (n : Nat) : 0 + n = n := by
  simp

theorem one_plus_one : 1 + 1 = 2 := by
  simp

/-- Small inductive type and a function -/

inductive MyTree where
  | leaf : MyTree
  | node : MyTree -> MyTree -> MyTree
  deriving Repr

open MyTree

def size : MyTree -> Nat
  | leaf => 1
  | node l r => 1 + size l + size r

#eval size (node leaf (node leaf leaf)) -- should be 4

/-- A simple proof about `size` for the `leaf` case -/

theorem size_leaf : size leaf = 1 := by
  rfl

def main : IO Unit := do
  IO.println s!"add 2 3 = {add 2 3}"
  IO.println s!"size example = {size (node leaf (node leaf leaf))}"

/- Next steps:
   - Open this file in VS Code and hover names to see types.
   - Place cursor on `#eval` and run it with the Lean extension.
   - Try modifying `size` and re-check the proofs.
-/
