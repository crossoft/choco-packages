$packageName= 'remotepc-client'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://www.remotepc.com/downloads/RemotePC.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url64bit      = $url64
  silentArgs    = "/VERYSILENT"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'remotepc-client*'
}


Install-ChocolateyPackage @packageArgs
