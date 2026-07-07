/-
  Exercises_proofs_adv.lean — advanced proofs and tactics examples
-/

-- induction-based proof that n + 0 = n

theorem add_zero_right (n : Nat) : n + 0 = n := by
  induction n
  case zero => rfl
  case succ n ih => simp [ih]

-- reuse standard library lemma for commutativity

theorem add_comm (a b : Nat) : a + b = b + a := Nat.add_comm a b

-- reuse standard library lemma for associativity

theorem add_assoc (a b c : Nat) : a + b + c = a + (b + c) := Nat.add_assoc a b c

def main : IO Unit := do
  IO.println "Exercises_proofs_adv loaded"
