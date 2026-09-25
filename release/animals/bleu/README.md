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

[Install Bleu](codex://pets/install?name=Bleu&imageUrl=https%3A%2F%2Fraw.githubusercontent.com%2Fcargo-culture%2Fpets%2Fmain%2Frelease%2Fanimals%2Fbleu%2Fspritesheet.webp&description=A%20derpy%20chibi%20Bernese%20Mountain%20Dog.%20Named%20like%20the%20cheese.&spriteVersionNumber=1)

This opens the pet install flow using the raw `spritesheet.webp` from this directory.
