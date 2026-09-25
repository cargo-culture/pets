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

The install link should point to the raw `spritesheet.webp` in this directory.
