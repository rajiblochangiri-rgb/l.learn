import Mathlib.Data.Nat.Factorial.Basic

#eval Nat.factorial 5

def main : IO Unit := do
  IO.println s!"Nat.factorial 5 = {Nat.factorial 5}"
