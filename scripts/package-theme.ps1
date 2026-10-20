<#
.SYNOPSIS
  Builds a clean theme zip for sharing or uploading to Shopify.

.DESCRIPTION
  Runs "shopify theme package", then removes developer notes that the CLI
  bundles anyway (AGENTS.md, CLAUDE.md) and adds the files a shared copy
  should carry: LICENSE, the font licence texts, README.md and INSTALL.md.

  Run it from anywhere; it works on the theme folder that contains it.

.EXAMPLE
  powershell -ExecutionPolicy Bypass -File scripts\package-theme.ps1
#>

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression.FileSystem

$root = Split-Path -Parent $PSScriptRoot
Push-Location $root
try {
  Get-ChildItem -Path $root -Filter '*.zip' -File | Remove-Item

  shopify theme package
  if ($LASTEXITCODE -ne 0) { throw 'shopify theme package failed.' }

  $zip = Get-ChildItem -Path $root -Filter '*.zip' -File | Select-Object -First 1
  if (-not $zip) { throw 'No zip file was produced.' }

  $archive = [System.IO.Compression.ZipFile]::Open($zip.FullName, 'Update')
  try {
    foreach ($name in 'AGENTS.md', 'CLAUDE.md') {
      $entry = $archive.GetEntry($name)
      if ($entry) { $entry.Delete() }
    }

    $extras = @('LICENSE', 'README.md', 'INSTALL.md') + (Get-ChildItem -Path "$root\licenses" -File | ForEach-Object { "licenses/$($_.Name)" })
    foreach ($relative in $extras) {
      $path = Join-Path $root $relative
      if ((Test-Path $path) -and -not $archive.GetEntry($relative)) {
        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($archive, $path, $relative) | Out-Null
      }
    }
  } finally {
    $archive.Dispose()
  }

  $zip = Get-Item $zip.FullName
  Write-Host ("Packaged: {0} ({1:N2} MB)" -f $zip.FullName, ($zip.Length / 1MB))
} finally {
  Pop-Location
}
