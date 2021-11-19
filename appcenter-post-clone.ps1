$bashPath = "$env:APPCENTER_SOURCE_DIRECTORY\appcenter-post-clone.sh"
write-host $bashPath
write-host $env:APPCENTER_SOURCE_DIRECTORY
bash $bashPath