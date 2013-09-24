name             'grails'
maintainer       'Rally Software Development Corp'
maintainer_email 'rallysoftware-cookbooks@rallydev.com'
license          'MIT'
description      'Installs/Configures grails'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'grails::default', 'Installs grails'

supports 'ubuntu'
supports 'centos'

depends 'ark', '~> 0.3.2'
depends 'java', '~> 1.13.0'
