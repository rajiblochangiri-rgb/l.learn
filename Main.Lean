example (P Q : Prop) : P ∧ Q → Q ∧ P := by
  intro h
  exact ⟨h.right, h.left⟩
