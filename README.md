Meta-runner Power Pack
======================

A collection of [Meta-runners](http://confluence.jetbrains.com/display/TCD8/Working+with+Meta-Runner) for TeamCity 8.x.

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

Each file with name **MRPP_\<some text\>.xml** contains a definition of a single [Meta-runner](http://confluence.jetbrains.com/display/TCD8/Working+with+Meta-Runner).

To install Meta-runner, take Meta-runner definition file and put it into [\<TeamCity Data Directory\>](http://confluence.jetbrains.com/display/TCD8/TeamCity+Data+Directory)/config/projects/\<Project ID\>/pluginData/metaRunners/ directory.

Where **\<Project ID\>** is the identifier of a project where you want to place the Meta-runner. If **metaRunners** directory does not exist it should be created.
Once you place the file on disk, TeamCity will detect it and load this Meta-runner, no server restart is required.
If Meta-runner is loaded succcessfully you should see its name in the list of build runners on build configuration Build Steps page.

Meta-runner placed into some project will be available to build configurations from this project and all subprojects.
If you want Meta-runner to be available to all of the projects, it should be placed in **Root** project.

Troubleshooting
===============

If after placing the Meta-runner on disk you see the following error in TeamCity web interface:
``Meta-Runner with id '<some id>' was registered from path '<some path>\<meta runner file name>.xml'
and cannot be overriden from path '<another path>\<meta runner file name>.xml'``

it means Meta-runner with the same ID is already defined in another project. To fix it you can either remove old Meta-runner, or change ID of the new one.
ID of the Meta-runner is name of the file, so you can simply rename file to some other name. It makes sense to preserve prefix **MRPP_** so that you could understand where this Meta-runner came from.

License
=======

Apache License 2.0
