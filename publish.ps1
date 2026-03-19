param(
  [Parameter(Position = 0)]
  [string]$Message = "Update notes"
)

$ErrorActionPreference = "Stop"

function Invoke-Git {
  param(
    [Parameter(Mandatory = $true)]
    [string[]]$Args
  )

  Write-Host ("> git " + ($Args -join " "))
  & git @Args

  if ($LASTEXITCODE -ne 0) {
    throw "git $($Args -join ' ') failed with exit code $LASTEXITCODE."
  }
}

Set-Location -Path $PSScriptRoot

Invoke-Git -Args @("add", ".")

& git diff --cached --quiet
$stagedExitCode = $LASTEXITCODE

if ($stagedExitCode -eq 0) {
  Write-Host "No staged changes found. Nothing to publish."
  exit 0
}

if ($stagedExitCode -ne 1) {
  throw "Unable to inspect staged changes."
}

Invoke-Git -Args @("commit", "-m", $Message)
Invoke-Git -Args @("push")

Write-Host ""
Write-Host "Published. GitHub Actions will rebuild and update the site."
