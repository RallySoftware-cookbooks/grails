# require_relative 'spec_helper'

# describe 'grails::default' do
#   let (:chef_run) { ChefSpec::ChefRunner.new.converge 'grails::default' }
#   before do
#     Fauxhai.mock(platform: 'centos', version: 6.3) do |node|
#       node['grails'] = {}
#       node['grails']['version'] = "2.1.1"
#       node['grails']['archive_name']  = "grails-#{node['grails']['version']}.zip"
#       node['grails']['source_url']  = "http://dist.springframework.org.s3.amazonaws.com/release/GRAILS/#{node['grails']['archive_name']}"
#       node['grails']['install_path']  = "/usr/local/grails-#{node['grails']['version']}"
#       node['grails']['file_path']  = "#{node['grails']['install_path']}.zip"
#       node['grails']['owner']  = "root"
#       node['grails']['group']  = "root"
#     end
#   end

#   it "installs grails" do
#     expect(chef_run).to create_remote_file('/usr/local/grails-2.1.1.zip').with(
#       :source => 'http://dist.springframework.org.s3.amazonaws.com/release/GRAILS/grails-2.1.1.zip',
#     )

#     expect(chef_run).to create_file '/usr/local/grails-2.1.1.zip'
#     expect(chef_run).to create_directory '/usr/local/grails-2.1.1'

#     directory = chef_run.directory('/usr/local/grails-2.1.1')
#     expect(directory).to be_owned_by('root', 'root')

#     expect(chef_run).to install_package 'grails'
#   end
# end
