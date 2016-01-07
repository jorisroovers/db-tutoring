# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

SHARED_DIR = "/opt/db-tutoring"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # Vagrant Cachier speeds up vagrant provisioning between destroys: https://github.com/fgrehm/vagrant-cachier
    if Vagrant.has_plugin?("vagrant-cachier")
        config.cache.scope = :box
    end

    config.vm.box = "ubuntu/wily64"

    config.vm.define "db", primary: true do |db|
        db.vm.synced_folder ".", SHARED_DIR
        # auto jump to shared dir on log in
        db.vm.provision "shell", inline: "echo 'cd #{SHARED_DIR}' >> /home/vagrant/.bashrc"

        db.vm.network "forwarded_port", guest: 3306, host: 9000

        db.vm.provision "shell", inline: "cd #{SHARED_DIR} && ./install.sh"

    end

end
