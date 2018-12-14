Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.network "forwarded_port", guest: 80, host: 8086
  ####### Provision #######
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provision/playbook.yml"
    ansible.verbose = true
  end
end
