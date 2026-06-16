# Stage 4 Router Revert Note

## What changed
- Reverted the temporary relaxation that allowed `inquiry_type`-only questions to pass.
- `manual-voc-flow` now requires both `product_group` and `inquiry_type` to route to `customer_inquiry`.
- Product-only or generic questions still fall back to clarification or handoff.

## Verified inputs
- `간편심사 조건을 말해줘` -> `needs_clarification`
- `간편보험 간편심사 조건` -> `customer_inquiry` -> `DOC-022`
- `보장내용 확인` -> `needs_clarification`
- `암보험 보장내용 확인` -> `customer_inquiry`
- `가입금액 변경` -> `human_handoff`
- `정기보험 가입금액 변경` -> `customer_inquiry`
