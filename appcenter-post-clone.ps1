Write-Host "#START Appcenter-post-clone.ps1"

$env:JAVA_HOME
$env:JAVA_HOME_11_X64

$env:JAVA_HOME = $env:JAVA_HOME_11_X64

Write-Host "JAVA_HOME NOW IS " $env:JAVA_HOME

Write-Host "#END Appcenter-post-clone.ps1"
