# JIRA Release Notes #

Generates a release notes markdown file in the GitHub output format.

## Parameter List ##

- **Jira Server** The Url of Jira server
- **Project Id** Issue tracker project ID
- **Jql** Jql query for closed issues
- **Output File** Specifies the file in which release notes are generated
- **Username** The username to authenticate to the JIRA server with
- **Password** The password to authenticate to the JIRA server with
- **All Tags** Specifies that all tags should be included in the release notes, if not specified then only the issues since the last tag are included
- **Version** Specifies the version to publish - i.e. The name of the Version you are publishing and want these release notes to be labelled as. (e.g. v1.2-beta)


## Dependencies ##

### NuGet packages ###

- GitReleaseNotes - 0.6.0

The Exe tool in the GitReleaseNotes package is downloaded and run. See this repo for more information.

[https://github.com/JakeGinnivan/GitReleaseNotes](https://github.com/JakeGinnivan/GitReleaseNotes)