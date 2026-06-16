# Stage 4 Product Alias Note

## What changed
- Added product alias handling for `OO상품` style input, including `실손상품`, `암상품`, `정기상품`, and similar variants.
- Added `상품료` as a natural-language alias for `보험료` when a product context is present.
- Kept the strict rule that both product and inquiry context are needed before routing to `customer_inquiry`.

## Verified inputs
- `실손상품료가 왜 올라요?` -> `customer_inquiry` -> `실손보험` + `보험료 상승 사유`
- `실손보험료가 왜 올라요?` -> `customer_inquiry` -> `실손보험` + `보험료 상승 사유`
- `암상품 보장내용 확인` -> `customer_inquiry` -> `암보험` + `보장내용 확인`
- `변액저축의 적립금 조회 방법을 알려줘` -> `customer_inquiry` -> `변액저축보험` + `적립금조회`
