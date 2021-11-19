Write-Host "#START Appcenter-post-clone.ps1"

Write-Host "JAVA_HOME IS " $env:JAVA_HOME

#Write-Host "AndroidSdkDirectory is " $env:AndroidSdkDirectory
#Write-Host "JavaSdkDirectory is " $env:JavaSdkDirectory

#$env:AndroidSdkDirectory = $env:JAVA_HOME
#$env:JavaSdkDirectory == $env:JAVA_HOME

#Write-Host "AndroidSdkDirectory is " $env:AndroidSdkDirectory
#Write-Host "JavaSdkDirectory is " $env:JavaSdkDirectory

SLN_PATH="$APPCENTER_SOURCE_DIRECTORY/NU1503_Mobile_Project.sln"
UWP_PATH="$APPCENTER_SOURCE_DIRECTORY/NU1503_Mobile_Project/NU1503_Mobile_Project.UWP/NU1503_Mobile_Project.UWP.csproj"

dotnet sln $SLN_PATH remove $UWP_PATH


Write-Host "#END Appcenter-post-clone.ps1"
