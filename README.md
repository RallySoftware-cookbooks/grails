[![Build Status](https://travis-ci.org/RallySoftware-cookbooks/grails.png?branch=master)](https://travis-ci.org/RallySoftware-cookbooks/grails)

Description
===========
Installs the grails library - 2.1.1 by default.

Requirements
============

Platform
--------
Tested on CentOS 6.4 and Ubuntu 12.04.  May support other operating systems that support the use of ark.

Other
-----

Requires the RallySoftware-cookbooks/ark cookbook

Attributes
==========
See `attributes/default.rb` for default values

* `node['grails']['version']` - version of grails to install (2.1.1)
* `node['grails']['archive_name']`  - archive name to download (includes version)
* `node['grails']['source_url']`  - where to find the grails package
* `node['grails']['path']`  - where to install grails
* `node['grails']['owner']`  - who should own the directory
* `node['grails']['group']`  - which group the directory should belong to
* `node['gradle']['mode']`  - the permissions to set the installation directory to

Recipes
=======

default
-------

Installs the grails library.

License
=======
Copyright (c) Rally Software Development Corp. 2013

Distributed under the MIT License.
