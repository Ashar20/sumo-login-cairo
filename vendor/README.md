# Vendored Garaga (patched)

This is a copy of [keep-starknet-strange/garaga](https://github.com/keep-starknet-strange/garaga) at **v0.13.3**, patched to build with Scarb/Cairo 2.8.2.

## Patches

1. **`src/definitions.cairo`**
   - Removed `impl U384One of num::traits::One<u384>` so core’s `One<u384>` is used (avoids E2313).
   - Removed `pub impl u384Serde of Serde<u384>` and use of `u384Serde` in `ec_ops.cairo` and `pairing_check.cairo` so core’s `Serde<u384>` is used.

2. **`Scarb.toml`**
   - Set `starknet = "2.8.2"` to match sumo.
   - Removed `readme = "../README.md"` (not present in this copy).

When upstream Garaga is compatible with the project’s Scarb/Cairo, this vendored package can be replaced with a git dependency.
