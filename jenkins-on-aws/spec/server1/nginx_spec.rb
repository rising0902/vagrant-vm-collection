require 'spec_helper'

describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe port(443) do
  it { should be_listening }
end

describe file('/etc/nginx/conf.d/jenkins.conf') do
  it { should be_file }
	  its(:content) { should match /ssl on/ }
end

describe file('/etc/nginx/conf.d/nginx.crt') do
  it { should be_file }
end

describe file('/etc/nginx/conf.d/nginx.key') do
  it { should be_file }
end
