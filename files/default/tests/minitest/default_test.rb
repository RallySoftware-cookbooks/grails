require File.expand_path('../support/helpers', __FILE__)

describe_recipe 'grails::default' do

  def grails_version
    node['grails']['version']
  end

  include Helpers::Grails

  it 'puts the grails directory in the correct location' do
    assert_directory "/usr/local/grails-#{grails_version}", "root", "root", "755"
  end

  it 'creates a grails shell profile' do
    assert_file "/etc/profile.d/grails.sh", "root", "root", "755"
  end

  it 'creates the symlink for grails' do
    link("/usr/local/grails").must_exist.with(:link_type, :symbolic).and(:to, "/usr/local/grails-#{grails_version}")
  end

end
