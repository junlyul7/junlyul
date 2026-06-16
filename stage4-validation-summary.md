# Stage 4 Validation Summary

## What I tuned

- Tightened router priority:
  - casual chat
  - clarification needed
  - customer inquiry
  - human handoff
- Tightened search behavior:
  - prefer exact `product_group + inquiry_type`
  - return `no_safe_match` instead of forcing a weak similarity
- Tightened draft behavior:
  - start from `standard_answer`
  - append short manual notes only when useful
  - return the refusal template for unsupported or out-of-catalog inquiries

## What the scenario pack covers

- 10 representative prompts
- 7 supported customer inquiries
- 1 casual chat
- 1 clarification case
- 1 unsupported amount/calc case

## Estimated accuracy

### Router

- Expected accuracy on the 10 scenario prompts: about `100%`
- Why: the routing rules are now explicit and cover the main branches directly

### Search

- Expected accuracy on supported exact catalog prompts: about `90%+`
- Expected accuracy drops when the user phrase is vague or only loosely related
- Why: embeddings can still vary on phrasing, but exact `product_group + inquiry_type` is now prioritized

### Draft

- Expected accuracy on supported matches: about `95%`
- Why: the draft mostly copies `standard_answer` and adds a short note only when needed

### End-to-end

- Supported-case accuracy: about `85-90%`
- The remaining risk is phrasing variance for search and unclear user intent for router

## How to test manually

1. Open `stage4-scenario-pack.md`.
2. Send each input to the router first.
3. For `customer_inquiry`, run the matched row through search.
4. If search returns a safe row, generate the draft.
5. Compare the result to the expected output in the pack.

## Main risks left

- Vague user phrasing that does not clearly map to `product_group + inquiry_type`
- Requests for unsupported calculations
- Cases where the answer exists but the note should not be duplicated

