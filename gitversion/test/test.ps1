$scriptpath = Split-Path $MyInvocation.MyCommand.Path
.\GitVersion.ps1 -workingDir "$scriptpath\..\" -output json -logFile "$scriptpath\log.txt" -outputFile "$scriptpath\json.txt"
.\GitVersion.ps1 -workingDir "$scriptpath\..\" -output buildserver -proj "$scriptpath\msbuild_example.proj" -projArgs "/t:Rebuild /p:Configuration=Release /p:Platform=AnyCPU"
.\GitVersion.ps1 -workingDir "$scriptpath\..\" -output buildserver -exec "$scriptpath\executable_example.bat" -execArgs "arg1 arg2"
