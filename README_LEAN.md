Lean 4 practice workspace — quick commands

Run single files with Lean:

```powershell
cd C:\Users\HP\MyProject
lean --run Basics.lean
lean --run Exercises_functions.lean
lean --run Exercises_proofs.lean
lean --run Exercises_proofs_adv.lean
lean --run Exercises_inductive_adv.lean
lean --run Exercises_inductive.lean
lean --run Exercises_metaprogramming.lean
```

Using Lake / mathlib4:

- To add mathlib4 to a Lake project, add it as a dependency in `lakefile.toml` and run `lake update`.
- See https://github.com/leanprover-community/mathlib4 for instructions and examples.

If you want, I can:
- Add `mathlib4` to your `lakefile.toml` and run `lake update` (requires network),
- Scaffold a small Lake package with tests and examples.

VS Code + Lean extension tips

- Open the workspace in VS Code and install the `Lean` extension (search for "Lean 4").
- Use the Lean extension to hover symbols for types and to run `#eval` expressions inline.
- To run files inside the Lake environment (so `Mathlib` is on the import path):

```powershell
cd C:\Users\HP\MyProject
lake env lean --run Mathlib_test.lean
```

If you'd like I can add editor tasks or shortcuts to run these commands from VS Code.
