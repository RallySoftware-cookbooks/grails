default['grails']['version'] = '2.1.1'
default['grails']['archive_name']  = "grails-#{node['grails']['version']}.zip"
default['grails']['source_url']  = "http://dist.springframework.org.s3.amazonaws.com/release/GRAILS/#{node['grails']['archive_name']}"
default['grails']['path']  = '/usr/local'
default['grails']['owner']  = 'root'
default['grails']['group']  = 'root'
default['grails']['mode'] = 755
