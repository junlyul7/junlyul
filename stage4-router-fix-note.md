# Stage 4 Router Fix Note

## What changed
- `manual-voc-flow` now routes to `customer_inquiry` when the input contains an exact `inquiry_type`, even if the product group is not explicitly mentioned.
- Exact metadata matches now appear as `search.match_status = "exact"` so the tester page is easier to interpret.
- Ambiguous product-only or amount/calculation questions still fall back to `human_handoff`.

## Verified inputs
- `간편심사 조건을 말해줘` -> `customer_inquiry` -> `DOC-022` -> draft returned from `standard_answer`
- `종신보험료 알려줘` -> `human_handoff` -> refusal message returned
