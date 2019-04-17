Install-ChocolateyZipPackage -PackageName 'a-pdf-merger' `
 -Url 'http://www.a-pdf.com/merger/a-pdf-mg.zip' `
 -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageName= 'a-pdf-merger'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'a-pdf-mg.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  file          = $fileLocation
  silentArgs    = "/SILENT"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'a-pdf-merger*'
}


Install-ChocolateyInstallPackage @packageArgs
cpack a-pdf-merger