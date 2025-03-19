$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)

$here = $MyInvocation.PSScriptRoot
$font_path = Join-Path -Path $here -ChildPath "adobe-source-code-pro"

$font_files = Get-ChildItem -Path $font_path -Recurse | Where-Object {
    $_.Extension -ilike "*.otf" -or $_.Extension -ilike "*.ttf"
}
 

foreach($f in $font_files) {
    $fname = $f.Name
    Write-Host -ForegroundColor Green "installing $fname..."
    $fonts.CopyHere($f.FullName)
}

