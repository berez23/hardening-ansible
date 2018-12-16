Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 222, host: 222
  ####### Provision #######
  compatibility_mode = "2.0"
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provision/playbook.yml"
    ansible.verbose = true
  end
  config.vm.provision :serverspec do |spec|
    spec.pattern = 'provision/roles/hardening_debian/tests/*_spec.rb'
  end
end
