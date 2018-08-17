# Credits: https://github.com/brunofacca/rails-development-environment/blob/master/Vagrantfile

# Get Vagrantfile directory (full path)
HOST_VAGRANT_DIR = File.dirname(__FILE__)

# -------------------- User Configurations ---------------------------

VM_NAME = "pareeksha-manch-dev"
VM_RAM_MB = ENV["MEMORY"].nil? ? 2048 : ENV["MEMORY"].to_i

# Nameservers which will be used by the guest VM
VM_NAMESERVER1 = "8.8.8.8"
VM_NAMESERVER2 = "8.8.4.4"

# Desired path for the VirtualBox shared folder within the host and VM
HOST_SHARED_FOLDER = HOST_VAGRANT_DIR
VM_SHARED_FOLDER = "/home/vagrant/pareeksha-manch"

# SSH keys used to access the VM and your GitHub account.
SSH_PRIVATE_KEY = "vm_provisioning/ssh/id_rsa"
SSH_PUBLIC_KEY = "vm_provisioning/ssh/id_rsa.pub"

ROOT_PROVISIONING_OPTIONS = {
    # Desired path for the VirtualBox shared folder within the VM
    "VM_SHARED_FOLDER" => VM_SHARED_FOLDER,

    # Git credentials and paths
    "GIT_HOST" => "github.com",
    "GIT_USER_FULL_NAME" => "Nishant Samel",
    "GIT_USER_EMAIL" => "nishant.samel@gmail.com",

    # SSH key for remote access to the VM and passwordless access to GitHub
    "SSH_PRIVATE_KEY" => SSH_PRIVATE_KEY,
    "SSH_PUBLIC_KEY" => SSH_PUBLIC_KEY,

    # Linux user for which Ruby and Rails will be installed in the VM
    "LINUX_USER" => "dev",

    # PostgreSQL username and password which will be created on provisioning
    "LOCAL_POSTGRES_USERNAME" => "localdbuser",
    "LOCAL_POSTGRES_PASSWORD" => "localdbpass",

    # Desired locale and TZ for the guest VM
    "LOCALE" => "en_US.UTF-8",
    "TIME_ZONE" => "Asia/Kolkata",
}

# Version of Rails to be installed on the guest VM
USER_PROVISIONING_OPTIONS = {
    "RAILS_VERSION" => "5.2.1"
}

# -------------------- End Of User Configurations ---------------------------

def check_vagrant_version
  Vagrant.require_version ">= 2.1.1"
end

# Check if all needed Vagrant plugins are installed.
def check_plugins
  required_plugins = %w(vagrant-vbguest vagrant-triggers vagrant-reload)
  missing_plugins = required_plugins.reject { |plugin| Vagrant.has_plugin? plugin }.join(" ")
  unless missing_plugins.empty?
    puts "The following required plugins are not installed on the HOST machine:\n#{missing_plugins.tr(' ', ', ')}"
    puts "\nRun following command to install missing plugins:\nvagrant plugin install #{missing_plugins}"
    # Halt the provisioning process
    abort
  end
end

def check_ssh_keys(ssh_private_key, ssh_public_key)
  # Check if the SSH keys exist
  if File.exist?(ssh_private_key) && File.exist?(ssh_public_key)
    puts "\nThe private key used to access the guest VM and Git is '#{ssh_private_key}'"
    puts "\nThe public key installed in the guest VM is '#{ssh_public_key}'"
  else
    puts "Could not find the private and/or public SSH keys used to access the VM and Git account"
    # Halt the provisioning process
    abort
  end
end

def print_shared_folder_paths(host_shared_folder, vm_shared_folder)
  puts "\nThe shared folder at the host machine is '#{host_shared_folder}'"
  puts "\nThe shared folder at the guest VM is '#{vm_shared_folder}'\n\n"
end

# Execute specific actions when "vagrant up" or "vagrant provision" are run.
if (ARGV[0] == "up") || (ARGV[0] == "provision")
  check_vagrant_version
  check_plugins
  check_ssh_keys("#{HOST_SHARED_FOLDER}/#{SSH_PRIVATE_KEY}",
                 "#{HOST_SHARED_FOLDER}/#{SSH_PUBLIC_KEY}")
  print_shared_folder_paths(HOST_SHARED_FOLDER, VM_SHARED_FOLDER)
end

# ------------------- VM config and provisioning -------------------------
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/xenial64"

  # Expose server and database ports via Port Forwarding
  config.vm.network "forwarded_port", guest: 3000, host: 3000 # HTTP
  config.vm.network "forwarded_port", guest: 5432, host: 5432 # PostgreSQL

  config.vm.synced_folder ".", VM_SHARED_FOLDER, create: true

  # Do NOT try to upgrade guest additions automatically on boot
  config.vbguest.auto_update = false

  # VirtualBox provider config
  config.vm.provider "virtualbox" do |vbox|
    vbox.name = VM_NAME
    vbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"] # Fix internet issue on guest VM
    vbox.memory = VM_RAM_MB
  end

  # Use the "vagrant-triggers" plugin, which allows running command on the host,
  # while Vagrant's standard shell provisioner only allows running commands on
  # the guest VM.
  # Usage:
  #   run "command"             executes command on the HOST
  #   run_remote "command"      executes command on the guest VM
  config.vm.provision "trigger", :stdout => true, :stderr => true do |trigger|
    trigger.fire do
      # Fix DNS issue that prevents the apt-get called by vagrant-vbguest
      # (before the provisioning script is run) from downloading packages from
      # archive.ubuntu.com
      run_remote "echo -e \"nameserver #{VM_NAMESERVER1}\nnameserver " \
                 "#{VM_NAMESERVER2}\" >> /etc/resolv.conf"
      # Update guest addons after fixing DNS issue
      run "vagrant vbguest"
      # Insert the VM shared folder path in rc.local. We are using "|" as a
      # separator instead of "/" so any slashes in the shared folder path are
      # not interpreted as separators.
      run_remote "sed -i \"s|^.*VM_SHARED_FOLDER_PLACEHOLDER.*$|export " \
                 "VM_SHARED_FOLDER=#{VM_SHARED_FOLDER}|\" /etc/rc.local"
    end
  end

  # A reboot is required for the new guest additions to work
  config.vm.provision :reload

  # Run Shell provisioning script. "privileged: true" indicates it should be run
  # AS ROOT
  config.vm.provision "shell",
                      path: "#{HOST_SHARED_FOLDER}/vm_provisioning/provision.sh",
                      privileged: true,
                      env: ROOT_PROVISIONING_OPTIONS

  # Run script to install RVM, Bundle, Ruby and Rails. This is run as the ubuntu
  # USER because installing RVM as root causes all sorts of problems.
  config.vm.provision "shell",
                      path: "#{HOST_SHARED_FOLDER}/vm_provisioning/install_ruby.sh",
                      privileged: false,
                      env: USER_PROVISIONING_OPTIONS

  config.vm.provision "shell",
                      inline: "echo -e '\e[1;32mWelcome to the Pareeksha Manch Project Development!\e[m\n'"
end
