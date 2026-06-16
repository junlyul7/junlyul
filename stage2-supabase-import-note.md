# Stage 2 Supabase Import Note

## Summary

- Project: `peznvgzngvguvlgnetsp`
- Organization: `itcwnwqroriwpjidlqnl`
- Edge Function: `import-manual-docs`
- Source file: `manual_docs.csv`
- Target table: `public.manual_docs`

## What was done

- Created `public.manual_docs` with `extensions.vector(384)` embedding storage.
- Deployed an Edge Function that generates `gte-small` embeddings and upserts rows into Supabase.
- Imported all 30 rows from `manual_docs.csv`.

## Verification

- Total rows: 30
- Embedded rows: 30
- Embedding dimensions: min `384`, max `384`
- Similarity check using `DOC-001` as the query vector returned `DOC-001` at rank 1 with cosine similarity `1.0000`

## Notes

- The imported rows are ready for later similarity search workflows.
- Search text is built from product group, inquiry type, answer text, and reference metadata.
