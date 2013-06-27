Installation Instructions
=========================

To install this Meta-runner, copy file **MRPP_PublishTeamCityArtifacts.xml** to [\<TeamCity Data Directory\>](http://confluence.jetbrains.com/display/TCD8/TeamCity+Data+Directory)/projects/\<Project ID\>/pluginData/metaRunners/ directory.

**\<Project ID\>** is the identifier of a project where you want to place the Meta-runner. If **metaRunners** directory does not exist it should be created.
Once you place a file on disk, TeamCity server will detect it and load this Meta-runner. No server restart is required.

Meta-runner placed into some project will be available to build configurations from this project and all subprojects. 
If you want Meta-runner to be available to all of the projects, it should be placed in **Root** project.

If after placing the Meta-runner on disk you see the following error in TeamCity web interface:
``Meta-Runner with id 'MRPP_PublishTeamCityArtifacts' was registered from path '<some path>\MRPP_PublishTeamCityArtifacts.xml' 
and cannot be overriden from path '<another path>\MRPP_PublishTeamCityArtifacts.xml'``

it means Meta-runner with the same ID is already defined in another project. To fix it you can either remove old Meta-runner, or change ID of the new one.
ID of the Meta-runner is name of the file, so you can simply rename file to some other name. It makes sense to preserve prefix **MRPP_** so that you could understand where this meta-runner came from.
