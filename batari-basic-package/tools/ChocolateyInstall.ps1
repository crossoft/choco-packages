Install-ChocolateyZipPackage -PackageName 'batari-basic' `
 -Url 'http://7800.8bitdev.org/images/4/44/BB.1.1d.reveng41.zip' `
 -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageName= 'batari-basic'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'bB.1.1d.reveng41'
$cmdBatch = "/c `"$fileLocation\install_win.bat`""
# $fileLocation = Join-Path $fileLocation 'install_win.bat'

# Write-Host "filepath: $fileLocation"
Start-ChocolateyProcessAsAdmin -Statements $cmdBatch -ExeToRun "C:\WINDOWS\System32\cmd.exe"