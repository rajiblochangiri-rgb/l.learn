# Run all exercise Lean files inside the Lake environment
$files = @(
  "Basics.lean",
  "Exercises_functions.lean",
  "Exercises_proofs.lean",
  "Exercises_proofs_adv.lean",
  "Exercises_inductive.lean",
  "Exercises_inductive_adv.lean",
  "Exercises_metaprogramming.lean"
)

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$root = Resolve-Path (Join-Path $scriptDir "..")

foreach ($f in $files) {
  Write-Host "--- Running $f ---"
  $full = Join-Path $root $f
  lake env lean --run $full
}
