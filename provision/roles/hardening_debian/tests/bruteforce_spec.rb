require_relative 'spec_helper'

describe package('fail2ban') do
  it { should be_installed }
end

describe service('fail2ban') do
  it { should be_running }
  it { should be_enabled   }
end

describe file('/etc/fail2ban/jail.local') do
  its(:md5sum) { should eq 'b84d0e64c69916963742f6fc676aa613' }
  it { should be_owned_by 'root' }
   it { should be_mode 644 }
end
