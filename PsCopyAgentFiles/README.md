# Powershell Copy Agent Files
This meta runner is designed to copy files from the agent checkout directory *during* a build -or- copy files from the agent temporary directory (e.g. build artifact '.zip' files published using the other Publish Artifacts metarunner)

## NOTE: Clean Build Option
This runs best when using the **clean build** option in the `VCS Options` in the Build Config options.

## Parameters
| Friendly Name       | Parameter                 | Description                                                                                                                       | Example                                                                                             |
|---------------------|---------------------------|-----------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Full Path Regex     | FileRegexmatch            | .NET style regex matched against the full path of each file.                                                                      | `.*)?bobbytables\.sql|(.*)?foo\.cmd`                                      								|
| Full UNC Path       | destUncPath               | Destination path to copy to. If a subdir is missing, it will attempt to create it                                                 | `\\NFS01\dev\%system.teamcity.projectName%\%system.build.number%`									|
| Error On No Matches | mustFindFiles             | Return error code if no matching files are found                                                                                  | False                                                                                               |
| Use Agent Tmp Dir   | useTmpDirInsteadOfWorking | Use the Agent's temp directory instead of the checkout/working directory. This can be useful for artifact archives created by TC. | False                                                                                               |
| Relative Paths      | useRelativePaths          | Recreate directory structure on the destination relative to the PWD 															  | True                                                                                               |