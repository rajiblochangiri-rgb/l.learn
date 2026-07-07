

def myadd (x y : Nat) : Nat := x + y

#eval myadd 7 8 -- 15

def main : IO Unit := do
  IO.println s!"myadd 7 8 = {myadd 7 8}"
