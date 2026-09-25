# Bleu

Bleu is a derpy chibi Bernese Mountain Dog custom ChatGPT/Codex pet.

## Pet atlas

This release uses the standard v1 pet atlas:

- 1536 x 1872 px
- 8 columns x 9 rows
- 192 x 208 px cells
- transparent WebP
- unused cells in shorter animation rows are fully transparent

### Animation rows

| Row | State | Active frames |
| --- | --- | ---: |
| 1 | idle | 6 |
| 2 | running-right | 8 |
| 3 | running-left | 8 |
| 4 | waving | 4 |
| 5 | jumping | 5 |
| 6 | failed | 8 |
| 7 | waiting | 6 |
| 8 | working/running | 6 |
| 9 | review/celebrate | 6 |

## Files

- `pet.json` — pet metadata
- `spritesheet.webp` — installable animated sprite atlas

## Install

1. [Download Bleu.zip](https://raw.githubusercontent.com/cargo-culture/pets/main/release/animals/bleu/Bleu.zip) (about 2.2 MB) and extract it.
2. **Windows:** Double-click `Install-Bleu.cmd`. **macOS:** Double-click `Install Bleu.command`. If it will not open, type `bash ` in Terminal, drag the command file into Terminal, and press Return.
3. Restart Codex, then select Bleu in the pet picker. Your client must support custom pets.

Keep the extracted files together. The installers work offline, verify SHA-256 checksums, and require no administrator access. They install into `~/.codex/pets/bleu` (Windows: `%USERPROFILE%\.codex\pets\bleu`), or the `pets/bleu` folder under `CODEX_HOME` if that environment variable is set. Running again replaces Bleu's two files and leaves other pets alone.

For manual installation, create that destination folder and copy [pet.json](pet.json) and [spritesheet.webp](spritesheet.webp) into it, keeping both filenames unchanged. The archive contains the same original v1 assets; no art or metadata changes are required.

Installer sources: [Windows launcher](Install-Bleu.cmd), [PowerShell](Install-Bleu.ps1), [macOS](Install%20Bleu.command). Download the ZIP for installation; the scripts need the adjacent assets.
