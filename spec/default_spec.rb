require 'chefspec'

describe 'grails::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'grails::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
