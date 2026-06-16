# Stage 4 Alias Extend Note

## What changed
- Added alias handling for `변액저축` -> `변액저축보험`.
- Added natural-language normalization for `적립금 조회` -> `적립금조회`.

## Verified inputs
- `변액저축의 적립금 조회 방법을 알려줘` -> `customer_inquiry` -> `변액저축보험` + `적립금조회`
- `변액저축 적립금 조회 방법을 알려줘` -> `customer_inquiry` -> `변액저축보험` + `적립금조회`
