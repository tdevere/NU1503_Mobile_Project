#SLN_PATH="$APPCENTER_SOURCE_DIRECTORY/NU1503_Mobile_Project.sln"
#UWP_PATH="$APPCENTER_SOURCE_DIRECTORY/NU1503_Mobile_Project/NU1503_Mobile_Project.UWP/NU1503_Mobile_Project.UWP.csproj"
#dotnet sln $SLN_PATH remove $UWP_PATH

#!/usr/bin/env bash

echo "The Post Clone Script"

SLN_PATH=$(find . -name '*.sln' -type f -print0)
echo "SLN_PATH = $SLN_PATH"

if [ -z "$RemoveUWPProjects" ]
then 
    echo "This script only runs within the context of App Center builds"
    exit
fi


UWP_PATHS=$(find . -name '*UWP*.csproj' -type f -print0 )
echo " UWP_PATHS = $UWP_PATHS"

for p in "$UWP_PATHS"; do
	echo "Removing $p from $SLN_PATH" || true
    dotnet sln $SLN_PATH remove $p || true
done


if [ -z "$RemoveANDROIDProjects" ]
then 
    echo "This script only runs within the context of App Center builds"
    exit
fi

ANDROID_PATHS=$(find . -name '*ANDROID*.csproj' -type f -print0 )
echo "ANDROID_PATHS = $ANDROID_PATHS"

for p in "$ANDROID_PATHS"; do
	echo "Removing $p from $SLN_PATH" || true
    dotnet sln $SLN_PATH remove $p || true
done

if [ -z "$RemoveIOSProjects" ]
then 
    echo "This script only runs within the context of App Center builds"
    exit
fi


IOS_PATHS=$(find . -name '*IOS*.csproj' -type f -print0 )
echo "IOS_PATHS = $IOS_PATHS"

for p in "$IOS_PATHS"; do
	echo "Removing $p from $SLN_PATH" || true
    dotnet sln $SLN_PATH remove $p || true
done