param(
    [switch]$Stop,
    [switch]$NoBrowser,
    [switch]$Logs
)

$ErrorActionPreference = "Stop"
$projectRoot = Split-Path -Parent $PSScriptRoot
$previewUrl = "http://127.0.0.1:8080/"

Set-Location $projectRoot

function Invoke-NativeQuiet {
    param([string[]]$Command)
    $previousErrorActionPreference = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    try {
        & $Command[0] $Command[1..($Command.Length - 1)] 1>$null 2>$null
        return $LASTEXITCODE -eq 0
    } finally {
        $ErrorActionPreference = $previousErrorActionPreference
    }
}

function Test-DockerImage {
    param([string]$ImageName)

    return Invoke-NativeQuiet @("docker", "image", "inspect", $ImageName)
}

if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
    Write-Host "Docker Desktop was not found." -ForegroundColor Yellow
    Write-Host "Install and start Docker Desktop first:"
    Write-Host "https://www.docker.com/products/docker-desktop/" -ForegroundColor Cyan
    exit 1
}

if (-not (Invoke-NativeQuiet @("docker", "info"))) {
    Write-Host "Docker Desktop is installed but is not running or is not ready yet." -ForegroundColor Yellow
    Write-Host "Open Docker Desktop and wait until it says Engine running, then try again." -ForegroundColor Yellow
    exit 1
}

if ($Stop) {
    Write-Host "Stopping the local preview..." -ForegroundColor Cyan
    docker compose down
    Write-Host "The local preview has stopped." -ForegroundColor Green
    exit $LASTEXITCODE
}

$previewImage = "amirpourmand/al-folio:latest"
if (-not (Test-DockerImage $previewImage)) {
    Write-Host "Downloading the al-folio preview image. This is only needed once." -ForegroundColor Cyan
    docker compose pull jekyll
    if ($LASTEXITCODE -ne 0) {
        Write-Host "The preview image download failed. Check the network and try again." -ForegroundColor Red
        exit $LASTEXITCODE
    }
}

Write-Host "Starting the local homepage preview..." -ForegroundColor Cyan
docker compose up -d --no-build
if ($LASTEXITCODE -ne 0) {
    Write-Host "Startup failed. Run bin\preview.cmd -Logs to inspect the logs." -ForegroundColor Red
    exit $LASTEXITCODE
}

Write-Host "Waiting for the first Jekyll build..." -ForegroundColor Cyan
$ready = $false
for ($attempt = 1; $attempt -le 90; $attempt++) {
    try {
        $response = Invoke-WebRequest -Uri $previewUrl -UseBasicParsing -TimeoutSec 2
        if ($response.StatusCode -ge 200 -and $response.StatusCode -lt 500) {
            $ready = $true
            break
        }
    } catch {
        Start-Sleep -Seconds 2
    }
}

if (-not $ready) {
    Write-Host "The preview did not become ready in time. Recent logs:" -ForegroundColor Yellow
    docker compose logs --tail=80 jekyll
    exit 1
}

Write-Host "Local preview: $previewUrl" -ForegroundColor Green
Write-Host "The browser refreshes automatically after files are saved." -ForegroundColor Green
Write-Host "To stop the preview, double-click bin\preview-stop.cmd" -ForegroundColor DarkGray

if (-not $NoBrowser) {
    Start-Process $previewUrl
}

if ($Logs) {
    docker compose logs -f jekyll
}
