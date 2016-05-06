==================================
SaltStack meta-runner for TeamCity
==================================

Execute salt modules through the salt-api.  Try to return exit code 1 if a state or execute module returns False.

Requirements
============

* Salt-API. https://docs.saltstack.com/en/latest/ref/netapi/all/salt.netapi.rest_cherrypy.html
* TeamCity Python Plugin. https://github.com/leo-from-spb/teamcity-python
* salt library must be installed on the TeamCity agent. `pip install salt`.  salt-master and salt-minion are not required, and no salt daemon is required to be running.  We only use the salt library to help print the output from the api.


Installation
============

From teamcity select a project (select <Root project> to make available to all projects.)

Administration > Meta-Runners > Upload Meta-Runner

Upload saltstack.xml

Example
=======

.. image:: images/saltstack-example.png
