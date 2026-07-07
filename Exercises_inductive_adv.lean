/-
  Exercises_inductive_adv.lean — inductive types, recursion, and simple lemmas
-/

inductive MyTree where
  | leaf : MyTree
  | node : MyTree -> MyTree -> MyTree
  deriving Repr

open MyTree

def size : MyTree -> Nat
  | leaf => 1
  | node l r => 1 + size l + size r

theorem size_leaf : size leaf = 1 := rfl

theorem size_node (l r : MyTree) : size (node l r) = 1 + size l + size r := rfl

def main : IO Unit := do
  IO.println s!"size leaf = {size leaf}"
