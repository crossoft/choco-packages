Install-ChocolateyZipPackage -PackageName 'lorex-status-client' `
 -Url 'https://www.lorextechnology.com/downloads/security-dvr/LH150-Series/ECO_STRATUS_SERIES_CLIENT_PC-v1_1_1186_0.zip' `
 -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageName= 'lorex-status-client'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'Lorex_Stratus_Client1-v1_1_1186_0.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  file          = $fileLocation
  silentArgs    = "/quiet"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'lorex-status-client*'
}


Install-ChocolateyInstallPackage @packageArgs
cpack lorex-status-client