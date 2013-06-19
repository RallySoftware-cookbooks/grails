#
# Cookbook Name:: grails
# Recipe:: default
#
# Copyright (c) Rally Software Development Corp. 2013 (see https://github.com/RallySoftware-cookbooks/grails)

include_recipe 'ark'

ark 'grails' do
  url node['grails']['source_url']
  version node['grails']['version']
  path node['grails']['path']
  owner node['grails']['owner']
  group node['grails']['group']
  mode node['grails']['mode']
  append_env_path true
  action :put
end

