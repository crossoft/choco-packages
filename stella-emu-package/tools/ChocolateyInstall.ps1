$packageName= 'stella-emu'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/stella-emu/stella/releases/download/6.0/Stella-6.0-x64.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url64bit      = $url64
  silentArgs    = "/SILENT"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'stella-emu*'
  checksum      = '0b87c495be7d0c8b162d388f61e0249d'
  checksumType  = 'md5'
}


Install-ChocolateyPackage @packageArgs
