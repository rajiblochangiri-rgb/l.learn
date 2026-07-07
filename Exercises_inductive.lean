

inductive Tree where
  | leaf : Tree
  | node : Tree -> Tree -> Tree
  deriving Repr

open Tree

def height : Tree -> Nat
  | leaf => 0
  | node l r => 1 + max (height l) (height r)

#eval height (node leaf (node leaf leaf)) -- should be 2

theorem height_leaf : height leaf = 0 := by
  rfl

def main : IO Unit := do
  IO.println s!"height example = {height (node leaf (node leaf leaf))}"
