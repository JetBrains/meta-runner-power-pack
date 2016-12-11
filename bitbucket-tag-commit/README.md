# BitBucket Tag Commit #

Tags a specific commit using the Bitbucket REST API.  Useful for automatically tagging commits used as production releases (and a variety of other use cases).

## Parameter List ##
- **Bitbucket Url** The base URL (including protocol) of the running Bitbucket instance
- **Basic Auth Header** Base64 encoded basic auth header
- **Bitbucket Project Group** The project key for this repository (visible in the repo URL)
- **Bitbucket Repo Slug** Repo slug for this repository (visible in the repo URL)
- **Commit Hash** Hash of the commit to be tagged
- **Tag Name** This parameter needs to be a new (unique) tag.  Generally should be using the build number or something unique to this build.
- **Tag Description** Tag Description (optional)


## Dependencies ##
Powershell version 3 or above on the running build agent (uses Invoke-RestMethod)
