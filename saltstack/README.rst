==================================
SaltStack meta-runner for TeamCity
==================================

Execute salt modules through the salt-api.  Try to return exit code 1 if a state or execute module returns False.

Requirements
============

* Salt-API. https://docs.saltstack.com/en/latest/ref/netapi/all/salt.netapi.rest_cherrypy.html
* TeamCity Python Plugin. https://github.com/leo-from-spb/teamcity-python


Installation
============

From teamcity select a project (select <Root project> to make available to all projects.)

Administration > Meta-Runners > Upload Meta-Runner

Upload saltstack.xml
