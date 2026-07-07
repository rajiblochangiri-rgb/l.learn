/-
  Exercises_proofs.lean — simple, self-checking proofs
-/

theorem two_plus_two : 2 + 2 = 4 := by
  rfl

theorem one_plus_one : 1 + 1 = 2 := by
  rfl

def main : IO Unit := do
  IO.println "proofs file loaded (simple)"
