#SLN_PATH="$APPCENTER_SOURCE_DIRECTORY/NU1503_Mobile_Project.sln"
#UWP_PATH="$APPCENTER_SOURCE_DIRECTORY/NU1503_Mobile_Project/NU1503_Mobile_Project.UWP/NU1503_Mobile_Project.UWP.csproj"
#dotnet sln $SLN_PATH remove $UWP_PATH

#!/usr/bin/env bash

echo "The Post Clone Script"

if [ -z "$RemoveUWPProjects" ]
then 
    echo "This script only runs within the context of App Center builds"
    exit
fi

SLN_PATH=$(find . -name '*.sln' -type f -print0)
UWP_PATHS=$(find . -name '*UWP*.csproj' -type f -print0 )

for p in "$UWP_PATHS"; do
    dotnet sln $SLN_PATH remove $UWP_PATH || true
done
