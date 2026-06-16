# Stage 3 Skill Setup Note

## Created skills

- `manual-voc-search`
- `manual-voc-draft`
- `manual-voc-router`

## Location

- `C:\Users\user\.codex\skills\manual-voc-search`
- `C:\Users\user\.codex\skills\manual-voc-draft`
- `C:\Users\user\.codex\skills\manual-voc-router`

## Routing logic

- `manual-voc-router` classifies input as `casual_chat`, `needs_clarification`, `customer_inquiry`, or `human_handoff`.
- `customer_inquiry` routes to `manual-voc-search`.
- A usable search result routes to `manual-voc-draft`.
- Unsupported calculation or outside-catalog cases route to human handoff.

## Validation status

- Skill folders were initialized successfully.
- `quick_validate.py` could not complete because the available Python runtime does not include `yaml`.
- The generated `openai.yaml` files and `SKILL.md` frontmatter were updated manually to match the skill creator format.
