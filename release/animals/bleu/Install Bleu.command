#!/bin/bash
set -euo pipefail
trap 'printf "\nBleu installation failed. Check the error above.\n" >&2' ERR

source_dir="$(cd -- "$(dirname -- "$0")" && pwd)"
pet_home="${CODEX_HOME:-$HOME/.codex}"
destination="$pet_home/pets/bleu"

verify() {
    local directory="$1"
    local actual
    actual="$(shasum -a 256 "$directory/pet.json")"
    [ "${actual%% *}" = '0b28dcff2d926a5d3ce00e9b3a5e4f0937776023e6e1182b9c9e53bf639f912b' ] || { echo 'pet.json checksum mismatch' >&2; return 1; }
    actual="$(shasum -a 256 "$directory/spritesheet.webp")"
    [ "${actual%% *}" = '5e193c66fabb67b30ed4f904284331d3491159884db5e459186d504fb46244b6' ] || { echo 'spritesheet.webp checksum mismatch' >&2; return 1; }
}

# Validate both bundled assets before changing the installation.
verify "$source_dir"
mkdir -p "$destination"
cp "$source_dir/pet.json" "$destination/pet.json"
cp "$source_dir/spritesheet.webp" "$destination/spritesheet.webp"
verify "$destination"
printf 'Bleu installed at %s\nRestart Codex, then open the pet picker and select Bleu.\n' "$destination"
