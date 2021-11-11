Write-Host "#START Appcenter-post-clone.ps1"

Write-Host "JAVA_HOME IS " $env:JAVA_HOME

Write-Host "AndroidSdkDirectory is " $env:AndroidSdkDirectory
Write-Host "JavaSdkDirectory is " $env:JavaSdkDirectory

$env:AndroidSdkDirectory = $env:JAVA_HOME
$env:JavaSdkDirectory == $env:JAVA_HOME

Write-Host "AndroidSdkDirectory is " $env:AndroidSdkDirectory
Write-Host "JavaSdkDirectory is " $env:JavaSdkDirectory


Write-Host "#END Appcenter-post-clone.ps1"
