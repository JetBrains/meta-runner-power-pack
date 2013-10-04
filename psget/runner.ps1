$PsGetDestinationModulePath = Join-Path "%env.CommonProgramW6432%" "Modules"
$_ErrorActionPreference = $ErrorActionPreference
$ErrorActionPreference = "SilentlyContinue"

$(New-Object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex -wa:SilentlyContinue

$ErrorActionPreference = $_ErrorActionPreference

function Build-Arguments {
  $arguments = @{}

  if(%mr.PSGet.UseNuGet%) {
    $arguments.NuGetPackageId = "%mr.PSGet.Module%"
  } else {
    $arguments.Module = "%mr.PSGet.Module%"
  }



  $arguments.Global = %mr.PSGet.Global%

  # PackageVersion=2.3.1 NugetSource=http://example.com
  if([String]::IsNullOrWhiteSpace("%mr.PSGet.Options%") -eq $false) {
	$("%mr.PSGet.Options%" -split ' ') | Foreach-Object {
		$argument = $($_ -split '=')
		
		if($argument -is [Array]) {
			$key = $($argument[0])
			$value = $($argument[1])

			$arguments.$key = $value
		} else {
			# flag argument
			$arguments.$argument = $true
		}
	}
  }

  return $arguments
}

$arguments = Build-Arguments

if(%mr.PSGet.Log%) {
	Write-Host "Installing module: %mr.PSGet.Module%"
	Write-Host "using arguments: " -NoNewline

	$arguments.Keys | Foreach-Object {
		Write-Host $("{0}={1} " -f $_, $arguments.$_) -NoNewline
	} -End {Write-Host ""}
}

Install-Module @arguments -ErrorAction:Stop