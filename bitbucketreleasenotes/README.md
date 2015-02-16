# BitBucket Release Notes #

Generates a release notes markdown file in the GitHub output format.

## Parameter List ##

- **ConsumerKey** BitBuckets Consumer Key used for Oauth authentication
- **ConsumerSecretKey** BitBuckets Consumer Secret Key used for Oauth authentication
- **Username** Can be used instead of Consumer Key/Secret. The username to authenticate with
- **Password** Can be used instead of Consumer Key/Secret. The username to authenticate with
- **Output File** Specifies the file in which release notes are generated
- **Repo** Repository name, in Organisation/Repository format
- **All Tags** Specifies that all tags should be included in the release notes, if not specified then only the issues since the last tag are included
- **Version** Specifies the version to publish - i.e. The name of the Version you are publishing and want these release notes to be labelled as. (e.g. v1.2-beta)



## Dependencies ##

### NuGet packages ###

- GitReleaseNotes - 0.6.0

The Exe tool in the GitReleaseNotes package is downloaded and run. See this repo for more information.

[https://github.com/JakeGinnivan/GitReleaseNotes](https://github.com/JakeGinnivan/GitReleaseNotes)