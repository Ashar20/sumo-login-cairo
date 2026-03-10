#!/bin/bash
# Updates garaga_signature.cairo with proof from zk/sp1/script prove output.
# Run: cd zk/sp1/script && SP1_PROVER=cpu cargo run -r --bin prove -- --output-dir ../proofs_prove
# Then: ./scripts/update_garaga_signature.sh

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
PROOFS_DIR="$PROJECT_ROOT/../zk/sp1/proofs_prove"
SIG_FILE="$PROOFS_DIR/garaga_signature_cairo.txt"
TARGET="$PROJECT_ROOT/tests/signatures/garaga_signature.cairo"

if [[ ! -f "$SIG_FILE" ]]; then
  echo "Proof output not found at $SIG_FILE"
  echo "Run: cd zk/sp1/script && SP1_PROVER=cpu cargo run -r --bin prove -- --output-dir ../proofs_prove"
  exit 1
fi

# Prepend original header comments, then use prove output (skip its first 2 comment lines)
HEADER="// Regenerated proof - run zk/sp1/script prove to update
// SP1 proof with 8 public inputs (eph_0, eph_1, address_seed, max_block, iss_b64_F, iss_index, header_F, modulus_F)
"
{
  echo "$HEADER"
  tail -n +4 "$SIG_FILE"  # Skip "// Generated...", "// Public values...", blank line
} > "$TARGET"

echo "Updated $TARGET with new proof from $SIG_FILE"
