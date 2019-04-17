Install-ChocolateyZipPackage -PackageName 'visualbb' `
 -Url 'http://atariage.com/forums/index.php?app=core&module=attach&section=attach&attach_id=589843' `
 -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageName= 'visualbb'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'VisualbB.exe'

Install-ChocolateyShortcut `
  -ShortcutFilePath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\visualbb.lnk" `
  -TargetPath $fileLocation `
  -WorkingDirectory "C:\" `
  -IconLocation "C:\visualbb.ico" `
  -Description "This is the shortcut of VisualbB."