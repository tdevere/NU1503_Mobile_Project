$SLN_PATH = Get-ChildItem -Path $env:APPCENTER_SOURCE_DIRECTORY -Include *.sln 
$AllProjects = Get-ChildItem -Path $env:APPCENTER_SOURCE_DIRECTORY -Include *.csproj -Exclude "*UWP*.csproj", "NU1503_Mobile_Project.csproj" -Recurse
write-host $SLN_PATH
write-host $AllProjects
foreach ($project in $AllProjects)
{
    write-host "Removing $project from $SLN_PATH"
    dotnet sln $SLN_PATH remove $project
}