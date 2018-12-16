require_relative 'spec_helper'

describe port(22) do
  it { should be_listening }
end

describe service('ssh') do
  it { should be_running }
  it { should be_enabled   }
end

describe file('/etc/ssh/sshd_config') do
  it { should be_file }
  its(:content) { should match(/Protocol 2/) }
  its(:content) { should match(/X11Forwarding no/) }
  its(:content) { should match(/PermitRootLogin no/) }
  its(:content) { should match(/PasswordAuthentication no/) }
  its(:content) { should match(/AllowAgentForwarding no/) }
  its(:content) { should match(/AllowTcpForwarding no/) }
  its(:content) { should match(/MaxAuthTries 2/) }
  its(:content) { should match(/MaxSessions 2/) }
  its(:content) { should match(/TCPKeepAlive no/) }
  its(:content) { should match(/UseDNS no/) }
  its(:content) { should match(/AllowAgentForwarding no/) }
end
