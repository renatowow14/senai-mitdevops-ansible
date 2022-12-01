# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

### VM Setup variables
BOX_NAME   = "ubuntu-20.04"
BOX        = "jgabriel/ubuntu-20.04" # You can search for boxes at https://vagrantcloud.com/search
HOSTNAME   = "ubuntu"
HOST_PORT  = "8000"
GUEST_PORT = "80"
DIR_HOST   = "./"
DIR_GUEST  = "/vagrant"
VM_GUI     = "false"
CPU        = "1"
RAM        = "1024"
DISK       = "30GB"


# Locale
ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
   
   config.vm.define (BOX_NAME) do |box|
      box.vm.box         = (BOX)
      box.vm.hostname    = (HOSTNAME)
      box.vm.box_version = "1.0" 
      box.vm.network "forwarded_port", guest: (GUEST_PORT), host: (HOST_PORT), host_ip: "127.0.0.1"
      box.vm.synced_folder (DIR_HOST), (DIR_GUEST)
      
      box.vm.provider "virtualbox" do |vb|
         vb.gui    = (VM_GUI)
         vb.cpus   = (CPU)
         vb.memory = (RAM)
      ### Requirements: 
      # vagrant plugin install vagrant-disksize   
      # Corrigir tamanho do disco do boot
      box.disksize.size = (DISK)
      
      ### Provision
      config.vm.provision "shell", path: "boot-strap.sh"
      end
   end
end

