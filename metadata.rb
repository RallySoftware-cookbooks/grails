name             'grails'
maintainer       'Rally Software Development Corp'
maintainer_email 'rallysoftware-cookbooks@rallydev.com'
license          'MIT'
description      'Installs/Configures grails'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.1.0'

recipe 'grails::default', 'Installs grails'

supports 'ubuntu'
supports 'centos'

depends 'java' #Do not put a symver for this cookbook
depends 'ark', '~> 0.3'
