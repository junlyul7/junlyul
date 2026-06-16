param(
  [Parameter(Mandatory = $true)]
  [string]$Text,

  [string]$EndpointUrl = $env:MANUAL_VOC_FLOW_URL,

  [string]$AnonKey = $env:SUPABASE_ANON_KEY
)

[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new($false)
$OutputEncoding = [System.Text.UTF8Encoding]::new($false)

if (-not $EndpointUrl) {
  throw "Set MANUAL_VOC_FLOW_URL or pass -EndpointUrl."
}

if (-not $AnonKey) {
  throw "Set SUPABASE_ANON_KEY or pass -AnonKey."
}

$body = @{ text = $Text } | ConvertTo-Json -Compress
$headers = @{
  Authorization = "Bearer $AnonKey"
  apikey        = $AnonKey
}

$response = Invoke-RestMethod -Method Post -Uri $EndpointUrl -Headers $headers -ContentType 'application/json' -Body $body
$response | ConvertTo-Json -Depth 8
