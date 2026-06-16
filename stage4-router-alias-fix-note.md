# Stage 4 Router Alias Fix Note

## What changed
- Restored the strict rule that requires both `product_group` and `inquiry_type` before routing to `customer_inquiry`.
- Added lightweight natural-language aliases so common scenario phrases map to the correct `inquiry_type` without loosening the rule.
- Kept product-name-missing inputs on clarification or handoff.

## Verified inputs
- `실손보험료가 왜 올라요?` -> `customer_inquiry` -> `실손보험` + `보험료 상승 사유`
- `간편심사 조건을 말해줘` -> `customer_inquiry` -> `간편보험` + `간편심사 조건`
- `보장내용 확인` -> `needs_clarification`
- `암보험 보장내용 확인` -> `customer_inquiry`
- `가입금액 변경` -> `human_handoff`
- `정기보험 가입금액 변경` -> `customer_inquiry`
