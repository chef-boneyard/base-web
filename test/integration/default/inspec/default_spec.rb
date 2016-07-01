# encoding: utf-8
# copyright: 2015, Chef Software, Inc.
# license: All rights reserved

title 'Apache Health Profile'

control "httpd-1.0" do
  impact 1.0
  title "Apache should be up and functioning"
  desc "Check install and general health"

  describe package('httpd') do
    it { should be_installed}
  end

  describe service('httpd') do
    it { should be_enabled}
    it { should be_running}
    it { should be_installed}
  end

end
