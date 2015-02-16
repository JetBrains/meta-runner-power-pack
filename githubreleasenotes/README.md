# GitHub Release Notes #

Generates a release notes markdown file in the GitHub output format.

## Parameter List ##

- **Repository** The GitHub repository to generate release notes for, e.g. maartenba/repo1.
- **OAuth2 token** GitHub OAuth2 token which can be used to connect to the GitHub repository
- **Output File** Specifies the file in which release notes are generated
- **All Tags** Specifies that all tags should be included in the release notes, if not specified then only the issues since the last tag are included
- **Version** Specifies the version to publish - i.e. The name of the Version you are publishing and want these release notes to be labelled as. (e.g. v1.2-beta)

## Dependencies ##

### NuGet packages ###

- GitReleaseNotes - 0.6.0

The Exe tool in the GitReleaseNotes package is downloaded and run. See this repo for more information.

[https://github.com/JakeGinnivan/GitReleaseNotes](https://github.com/JakeGinnivan/GitReleaseNotes)