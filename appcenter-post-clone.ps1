Write-Host "START BASH"

bash

SLN_PATH=$(find . -name '*.sln' -type f -print0)
echo "SLN_PATH = $SLN_PATH"

if [ -z "$RemoveUWPProjects" ]
then 
    echo "This script only runs within the context of App Center builds"
    exit
fi


UWP_PATHS=$(find . -iname '*UWP*.csproj' -type f -print0 )
echo " UWP_PATHS = $UWP_PATHS"

for p in "$UWP_PATHS"; do
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