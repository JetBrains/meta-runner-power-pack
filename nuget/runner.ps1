function Build-Arguments {
  $parameters = @()

  $parameters += "install"
  $parameters += "%mr.NuGetInstall.Package%"

  if([String]::IsNullOrWhiteSpace("%mr.NuGetInstall.Version%") -eq $false) {
    $parameters += "-Version"
    $parameters += "%mr.NuGetInstall.Version%"
  }
  
  if([String]::IsNullOrWhiteSpace("%mr.NuGetInstall.OutputDirectory%") -eq $false) {
    $parameters += "-OutputDirectory"
    $parameters += "%mr.NuGetInstall.OutputDirectory%"
  }
  
  if([String]::IsNullOrWhiteSpace("%mr.NuGetInstall.Options%") -eq $false) {
	$("%mr.NuGetInstall.Options%" -split ' ') | Foreach-Object {
		$parameters += $_
	}
  }

  return $parameters
}

$nuget = Join-Path -Path '%teamcity.tool.NuGet.CommandLine.DEFAULT.nupkg%' -ChildPath 'tools\NuGet.exe'
$arguments = Build-Arguments

if(%mr.NuGetInstall.Log%) {
	Write-Host "Executing nuget.exe"
	Write-Host "source: $nuget"
	Write-Host "using arguments: " -NoNewline

	$arguments | Foreach-Object {
		Write-Host "$_ " -NoNewline
	} -End {Write-Host ""}
}

& $nuget $arguments | Out-String