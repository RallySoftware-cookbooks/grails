require_relative 'spec_helper'

describe 'grails::default' do

  let(:package_name) { 'grails' }
  let(:owner) { 'root' }
  let(:group) { 'root' }
  let(:path) { '/usr/local' }

  subject { ChefSpec::Runner.new(:step_into => [:ark]).converge described_recipe }

  it { should put_ark(package_name).with(
    :owner => owner,
    :group => group,
    :mode => 755
  )}
end
