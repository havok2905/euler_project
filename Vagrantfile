project_name = 'project_euler'
host_port = 4000
guest_port = 4000
memory = 2048
cpus = 2

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network "forwarded_port", guest: guest_port, host: host_port
  config.vm.synced_folder "./", "/srv/#{project_name}", :nfs => { :mount_options => ["dmode=777","fmode=777"] }

  config.vm.provision :shell, :inline => "sudo apt-get update --fix-missing"
  config.vm.provision :shell, :inline => "sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev"
  config.vm.provision :shell, :inline => "sudo apt-add-repository ppa:brightbox/ruby-ng"
  config.vm.provision :shell, :inline => "sudo apt-get update"
  config.vm.provision :shell, :inline => "sudo apt-get install -y ruby2.3 ruby2.3-dev"
  config.vm.provision :shell, :inline => "sudo apt-get install -y nodejs"
  config.vm.provision :shell, :inline => "sudo apt-get install -y vim"
  config.vm.provision :shell, :inline => "gem install bundler"

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", memory, "--name", project_name,"--cpus", cpus]
    # v.gui = true
  end
end
