#
# Cookbook Name:: grails
# Recipe:: default
#
# Copyright (c) Rally Software Development Corp. 2013 (see https://github.com/RallySoftware-cookbooks/grails)
#

include_recipe "java"

ark "grails" do
  url node['grails']['source_url']
  version node['grails']['version']
  owner node['grails']['owner']
  append_env_path true
  action :install
end

