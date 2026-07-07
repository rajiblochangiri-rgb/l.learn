/-
  Exercises_functions.lean — functions examples: factorial, fibonacci, and tiny proofs
 -/
def fac : Nat -> Nat
  | 0 => 1
  | n+1 => (n+1) * fac n

#eval fac 5 -- 120

def fib : Nat -> Nat
  | 0 => 0
  | 1 => 1
  | n+2 => fib (n+1) + fib n

#eval fib 6 -- 8

theorem fac_zero : fac 0 = 1 := by
  rfl

theorem fac_one : fac 1 = 1 := by
  rfl

theorem fib_zero : fib 0 = 0 := by
  rfl

theorem fib_one : fib 1 = 1 := by
  rfl

def main : IO Unit := do
  IO.println s!"fac 5 = {fac 5}"
  IO.println s!"fib 6 = {fib 6}"
