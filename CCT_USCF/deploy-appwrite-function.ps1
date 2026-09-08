param(
    [switch]$DryRun,
    [switch]$SkipTableSetup,
    [string]$ProjectId = $env:APPWRITE_PROJECT_ID,
    [string]$Endpoint = $env:APPWRITE_ENDPOINT,
    [string]$ApiKey = $env:APPWRITE_API_KEY
)

$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$functionRoot = Join-Path $repoRoot 'appwrite-function'
$setupScript = Join-Path $functionRoot 'setup-announcements.js'

function Write-Info($Message) {
    Write-Host "[appwrite-deploy] $Message" -ForegroundColor Cyan
}

function Ensure-Command($Name) {
    if (-not (Get-Command $Name -ErrorAction SilentlyContinue)) {
        throw "Required command '$Name' is not installed or is not on PATH."
    }
}

Ensure-Command 'appwrite'

if (-not $Endpoint) {
    $Endpoint = 'https://sgp.cloud.appwrite.io/v1'
}

if (-not $ProjectId) {
    $ProjectId = 'cct-uscf'
}

if (-not (Test-Path $setupScript)) {
    throw "Missing Appwrite setup script at $setupScript"
}

Write-Info "Using endpoint: $Endpoint"
Write-Info "Using project: $ProjectId"

try {
    $null = appwrite whoami 2>$null
} catch {
    Write-Host 'Appwrite CLI is not authenticated for this account.' -ForegroundColor Yellow
    Write-Host 'Run: appwrite login' -ForegroundColor Yellow
    Write-Host 'Then ensure the active account can access the CCT-USCF project or organization.' -ForegroundColor Yellow
    if (-not $DryRun) {
        throw 'Appwrite login is required before deploying the function.'
    }
}

if (-not $DryRun) {
    if (-not $ApiKey) {
        throw 'APPWRITE_API_KEY is required to create/update the Appwrite database tables. Set APPWRITE_API_KEY before running this script.'
    }

    if (-not $SkipTableSetup) {
        Write-Info 'Creating or updating announcement tables and attributes...'
        $env:APPWRITE_ENDPOINT = $Endpoint
        $env:APPWRITE_PROJECT_ID = $ProjectId
        $env:APPWRITE_API_KEY = $ApiKey
        & node $setupScript
    }

    Write-Info 'Deploying Appwrite function from repo root...'
    Push-Location $repoRoot
    try {
        & appwrite push function --force --logs
    } finally {
        Pop-Location
    }
} else {
    Write-Host 'DRY RUN: no deployment was executed.' -ForegroundColor Yellow
    Write-Host 'Would run:' -ForegroundColor Yellow
    Write-Host '  1. node appwrite-function/setup-announcements.js' -ForegroundColor Yellow
    Write-Host '  2. appwrite push function --force --logs' -ForegroundColor Yellow
}
