# Stage 4 General Product Alias Note

## What changed
- Reworked product detection to map `OO보험` and `OO상품` variants back to the same canonical `product_group`.
- This now applies broadly instead of only for a few hand-coded exceptions.

## Verified inputs
- `유병자보험 가입가능 여부` -> `customer_inquiry` -> `유병자보험`
- `유병자상품 가입가능 여부` -> `customer_inquiry` -> `유병자보험`
- `유병자상품 가입가능한가요?` -> `customer_inquiry` -> `유병자보험`
- `유병자보험 가입가능한가요?` -> `customer_inquiry` -> `유병자보험`
