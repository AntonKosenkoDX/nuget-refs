$ErrorActionPreference = 'Stop'
Get-ChildItem . -Include bin,obj -Recurse | ForEach-Object ($_) { Remove-Item $_.FullName -Force -Recurse }
& Remove-Item MyNuGet/MyNugetMaui.1.0.0.nupkg
& Remove-Item -Recurse ~\.nuget\packages\mynugetmaui\

& dotnet build MyUtilities/MyUtilities.csproj
& dotnet build MyLib/MyLib.csproj
& nuget pack MyNuget/MyNuget.nuspec -OutputDirectory MyNuget/

& dotnet build MyApp/MyApp.csproj
& dotnet build MyConsoleApp/MyConsoleApp.csproj