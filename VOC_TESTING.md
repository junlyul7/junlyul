# VOC Testing Guide

## 1. Set environment variables

Copy `voc-test-env.example` to your local environment and fill in the key values.

- `MANUAL_VOC_FLOW_URL`
- `SUPABASE_ANON_KEY`

## 2. Run one test

```powershell
.\run-manual-voc-test.ps1 -Text "실손보험료가 왜 올라요?"
```

Or open the browser tester:

```powershell
.\launch-manual-voc-tester.ps1
```

## 3. Compare the result

Check these fields in the JSON response:

- `router.label`
- `router.response`
- `search.match_status`
- `search.matched_rows[0].reference_doc_id`
- `draft.status`
- `draft.draft_answer`

## 3. Browser tester

Open `manual-voc-tester.html`, paste your key, type a question, and click `Run Test`.

The page shows:

- router label and response
- search match status
- top matching `DOC-00x`
- draft text

## 4. Run the sample scenarios

Use `stage4-execution-examples.md` as the expected-output reference for the 10 sample prompts.

For a quick batch check, run:

```powershell
.\run-manual-voc-scenarios.ps1 -Limit 1
```

The full 10-scenario batch may take a while because each request generates an embedding and queries Supabase.

## 5. What success looks like

- Greeting inputs stay in `casual_chat`
- Real product questions go to `customer_inquiry`
- Unsupported amount/calculation questions go to `human_handoff`
- Search returns a relevant `DOC-00x` row
- Draft mirrors `standard_answer` and stays short
