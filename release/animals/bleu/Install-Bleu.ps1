$ErrorActionPreference = 'Stop'
function Get-BleuHash([string] $Path) {
    $stream = [System.IO.File]::OpenRead($Path)
    $sha = [System.Security.Cryptography.SHA256]::Create()
    try { return [BitConverter]::ToString($sha.ComputeHash($stream)).Replace('-', '').ToLowerInvariant() }
    finally { $sha.Dispose(); $stream.Dispose() }
}
try {
    $petHome = if ([string]::IsNullOrWhiteSpace($env:CODEX_HOME)) { Join-Path $HOME '.codex' } else { $env:CODEX_HOME }
    $destination = Join-Path $petHome 'pets/bleu'
    $expected = @{
        'pet.json' = '0b28dcff2d926a5d3ce00e9b3a5e4f0937776023e6e1182b9c9e53bf639f912b'
        'spritesheet.webp' = '5e193c66fabb67b30ed4f904284331d3491159884db5e459186d504fb46244b6'
    }
    # Check both bundled files before changing the installation.
    foreach ($name in $expected.Keys) {
        $source = Join-Path $PSScriptRoot $name
        if ((Get-BleuHash $source) -ne $expected[$name]) {
            throw "Checksum mismatch for $name. Extract a fresh Bleu.zip and retry."
        }
    }
    New-Item -ItemType Directory -Path $destination -Force | Out-Null
    foreach ($name in $expected.Keys) {
        Copy-Item -LiteralPath (Join-Path $PSScriptRoot $name) -Destination (Join-Path $destination $name) -Force
        if ((Get-BleuHash (Join-Path $destination $name)) -ne $expected[$name]) {
            throw "Installed file verification failed: $name"
        }
    }
    Write-Host "Bleu installed at $destination"
    Write-Host 'Restart Codex, then open the pet picker and select Bleu.'
} catch {
    Write-Error "Bleu installation failed: $_" -ErrorAction Continue
    exit 1
}
