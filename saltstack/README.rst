==================================
SaltStack meta-runner for TeamCity
==================================

Execute salt modules through the salt-api.  Try to return exit code 1 if a state or execute module returns False.

Requirements
============

* Salt-API. https://docs.saltstack.com/en/latest/ref/netapi/all/salt.netapi.rest_cherrypy.html
* TeamCity Python Plugin. https://github.com/leo-from-spb/teamcity-python
* salt library must be installed on the TeamCity agent. `pip install salt`.  salt-master and salt-minion are not required, and no salt daemon is required to be running.  We only use the salt library to help print the output from the api.
  * For saltstack-2017-7.xml >= 2017.7 the python3 version of salt is required.  `pip3 install salt`.  Warning this will overwrite any Python2 salt scripts!


Installation
============

For SaltStack >= 2017.7 use saltstack-2017-7.xml

For SaltStack < 2017.7 use saltstack.xml

From teamcity select a project (select <Root project> to make available to all projects.)

Administration > Meta-Runners > Upload Meta-Runner

Upload saltstack.xml

Example
=======

.. image:: images/saltstack-example.png
