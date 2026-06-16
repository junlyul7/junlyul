param(
  [string]$EndpointUrl = $env:MANUAL_VOC_FLOW_URL,
  [string]$AnonKey = $env:SUPABASE_ANON_KEY,
  [string]$InputFile,
  [string]$OutputFile,
  [int]$Limit = 0
)

if (-not $InputFile) {
  $InputFile = Join-Path $PSScriptRoot 'stage4-scenario-inputs.txt'
}

if (-not $OutputFile) {
  $OutputFile = Join-Path $PSScriptRoot 'stage4-scenario-results.json'
}

if (-not $EndpointUrl) {
  throw "Set MANUAL_VOC_FLOW_URL or pass -EndpointUrl."
}

if (-not $AnonKey) {
  throw "Set SUPABASE_ANON_KEY or pass -AnonKey."
}

if (-not (Test-Path -LiteralPath $InputFile)) {
  throw "Scenario input file not found: $InputFile"
}

$headers = @{
  Authorization = "Bearer $AnonKey"
  apikey        = $AnonKey
}

$scenarios = Get-Content -LiteralPath $InputFile -Encoding UTF8 | Where-Object { $_.Trim() }
if ($Limit -gt 0) {
  $scenarios = $scenarios | Select-Object -First $Limit
}
$results = @()

for ($i = 0; $i -lt $scenarios.Count; $i++) {
  $text = $scenarios[$i]
  $body = @{ text = $text } | ConvertTo-Json -Compress
  $resp = Invoke-RestMethod -Method Post -Uri $EndpointUrl -Headers $headers -ContentType 'application/json' -Body $body

  $results += [pscustomobject]@{
    index = $i + 1
    input = $text
    router = $resp.router.label
    search_status = if ($resp.search) { $resp.search.match_status } else { 'not_run' }
    top_doc = if ($resp.search -and $resp.search.matched_rows.Count -gt 0) { $resp.search.matched_rows[0].reference_doc_id } else { '' }
    draft_status = if ($resp.draft) { $resp.draft.status } else { 'not_run' }
  }
}

$results | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath $OutputFile -Encoding UTF8
$results | Select-Object index, router, search_status, top_doc, draft_status | Format-Table -AutoSize
