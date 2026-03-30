$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$html = Join-Path $root "public\cv-jairo-martinez.html"
$output = Join-Path $root "public\portafolio-jairo-martinez.pdf"
$flutterCopy = Join-Path $root "flutter_portafolio\assets\portafolio-jairo-martinez.pdf"

if (!(Test-Path $chrome)) {
  throw "Chrome no está disponible en $chrome"
}

if (!(Test-Path $html)) {
  throw "No se encontró la plantilla del CV en $html"
}

$uri = "file:///$($html.Replace('\', '/'))"

& $chrome `
  "--headless=new" `
  "--disable-gpu" `
  "--allow-file-access-from-files" `
  "--run-all-compositor-stages-before-draw" `
  "--virtual-time-budget=12000" `
  "--print-to-pdf-no-header" `
  "--print-to-pdf=$output" `
  $uri

if (!(Test-Path $output)) {
  throw "No se pudo generar el PDF en $output"
}

Copy-Item -Force $output $flutterCopy
Write-Output "PDF generado en $output"
Write-Output "Copia actualizada en $flutterCopy"
