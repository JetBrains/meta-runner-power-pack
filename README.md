Meta-runner Power Pack
======================

A collection of [Meta-runners](http://confluence.jetbrains.com/display/TCD9/Working+with+Meta-Runner) for TeamCity.

Available Meta-Runners
======================

* Publish TeamCity artifacts (publishes artifacts to TeamCity while the build is running)
* Upload to FTP (uploads files to FTP)
* Download File (downloads file by HTTP or FTP URL)
* Trigger Custom Build (triggers a build in TeamCity optionally with custom parameters)
* Add Tags to Build (adds tags to currently running build in TeamCity)
* Deploy War (deploys war file to servlet container)
* Create Text File (creates text file with specified content)
* Build Status Text (sets custom build status text to the build)
* Sonar Runner (Runner for Sonar)
* PHP-related meta runners (see [documentation](https://github.com/JetBrains/meta-runner-power-pack/tree/master/php))
	* Run arbitrary PHP code
	* Install a specific Composer dependency
	* Install/update packages from composer.json
	* Run Phing build script
	* Run PHPUnit tests (with code coverage reporting)
* .NET-related meta runners
	* Update connection string in configuration file
	* Update appsetting value in configuration file
  * [Run tests with VSTest](https://github.com/JetBrains/meta-runner-power-pack/tree/master/vstest)
* .NET/PowerShell-based meta-runners
    * [NuGet install command](https://github.com/JetBrains/meta-runner-power-pack/tree/master/nuget)
    * [PSGet installer](https://github.com/JetBrains/meta-runner-power-pack/tree/master/psget)
    * [SemVer build number](https://github.com/JetBrains/meta-runner-power-pack/tree/master/semver-buildnumber)
    * [Generate GitHub Release Notes](https://github.com/JetBrains/meta-runner-power-pack/tree/master/githubreleasenotes)


Installation Instructions
=========================

Each file called **MRPP_\<some text\>.xml** contains a definition of a single [Meta-runner](http://confluence.jetbrains.com/display/TCD9/Working+with+Meta-Runner).

You can install a meta-runner directly via the file system or, since TeamCity 9.0 EAP1, using the TeamCity Web UI:

- to install Meta-runner directly to the file system, take the Meta-runner definition file and put it into the [\<TeamCity Data Directory\>](http://confluence.jetbrains.com/display/TCD9/TeamCity+Data+Directory)/config/projects/\<Project ID\>/pluginData/metaRunners/ directory, where **\<Project ID\>** is the identifier of a project where you want to place the Meta-runner. If the **metaRunners** directory does not exist, it will be created. Once you place the file on the disk, TeamCity will detect it and load this Meta-runner; no server restart is required.

- to install Meta-runner via the Web UI, go to the Project Settings page, select Meta-Runners from the list of settings on the left, click Upload Meta-Runner and select the Meta-runner definition file. Save you changes.

If the Meta-runner is loaded succcessfully, you will see it listed on the Meta-Runners page for the project; if you have appropriate permissions, you can modify the definiton directly in the TeamCity UI. 

The runner is now available in the list of build runners on the build configuration Build Steps page and is represented as a native TeamCity runner with a convenient UI.

A Meta-runner placed into some project will be available to all build configurations and all subprojects of this project.
If you want a Meta-runner to be available to all of the projects, place it in the **Root** project.

Troubleshooting
===============

If you see the "Meta-Runner with specified name already exists" when attempting to upload a meta-runner via the UI or if
after placing the Meta-runner on the disk you see the following error in the TeamCity web interface:
``Meta-Runner with id '<some id>' was registered from path '<some path>\<meta runner file name>.xml'
and cannot be overridden from path '<another path>\<meta runner file name>.xml'``

it means that a Meta-runner with the same ID is already defined in another project. To fix it, you can either remove the old Meta-runner, or change the ID of the new one.
The ID of the Meta-runner is the name of the file, so you can simply rename file. It makes sense to preserve prefix **MRPP_** so that you could understand where this Meta-runner came from.

License
=======

Apache License 2.0
