require_relative 'spec_helper'

describe 'grails::default' do

  let (:package_name) { 'grails' }
  let (:owner) { 'root' }
  let (:group) { 'root' }
  let (:path) { '/usr/local/grails-2.1.1' }
  let (:chef_run) { ChefSpec::ChefRunner.new(:step_into => [:ark]) }

  before do
    chef_run.converge 'grails::default'
  end

  it 'creates grails file in correct location' do
    expect(chef_run).to install_ark(package_name, path)
  end

  it 'creates grails file with correct ownership' do
    expect(chef_run).to owner_group_ark(package_name, owner, group)
  end

  it 'creates grails file with correct permissions' do
    expect(chef_run).to mode_ark(package_name, 755)
  end

end
