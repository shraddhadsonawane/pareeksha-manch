# Instructions to setup Development Environment locally

## Section 1: Installation

- Install appropriate Linux distro in your Laptop (Dumb box or Dabba). [Ubuntu](https://www.ubuntu.com/download/desktop) preferred.   
  We are using [Ubuntu Bionic Beaver (18.04 / 64Bit)](https://wiki.ubuntu.com/BionicBeaver) for developement.
- Install [Ruby and Ruby on Rails as per this guidelines](https://gorails.com/setup/ubuntu/18.04).
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
  We are using version `5.2.18`.
- Install [Vagrant](https://www.vagrantup.com/downloads.html).
  We are using version `2.1.1`.
  
## Section 2: General Apps and Tools

- Source Control
  - [Git](https://git-scm.com/) and [GitHub](https://github.com)
- Editors
  - [Vim](https://www.vim.org/) 
  - [Sublime Text](https://www.sublimetext.com/)
  - [RubyMine](https://www.jetbrains.com/ruby/) 
- Virtualization
  - [VirtualBox](https://www.virtualbox.org)
  - [Vagrant](https://www.vagrantup.com)
- Language & Framework
  - [Ruby](https://www.ruby-lang.org)
  - [Ruby on Rails](https://rubyonrails.org/)

## Section 3: Get the project

- Fork the GitHub repo [`pareeksha-manch`](https://github.com/shikshaplus/pareeksha-manch)
- Clone your forked repo locally(in your laptop's terminal/shell/prompt) as
  ```bash
  git clone https://github.com/<your-username>/pareeksha-manch
  ```
- Add `upstream` remote as
  ```bash
  git remote add upstream https://github.com/shikshaplus/pareeksha-manch
  ```
  NOTE: This is used for getting latest changes later.
- Go inside the project as
  ```bash
  cd pareeksha-manch  
  ```
- Setup your SSH keys for developement
  ```bash
  cp ~/.ssh/id_rsa vm_provisioning/ssh/
  cp ~/.ssh/id_rsa.pub vm_provisioning/ssh/

  or 
    
  cp ~/.ssh/some-private-key vm_provisioning/ssh/id_rsa
  cp ~/.ssh/some-public-key.pub vm_provisioning/ssh/id_rsa.pub
  ```
  NOTE: SSH Keys! Don't be afraid :smile:. These files are ignored by Git and will not be part of any commit changes.    
- Install required Vagrant plugins
  ```bash
  vagrant plugin install vagrant-vbguest vagrant-triggers vagrant-reload
  ```
- Get started as
  ```bash
  vagrant up  
  ```
- When you see below message at the end of above step, then only you are ready to start developement :wink:
  ```bash
  Welcome to the Pareeksha Manch Project Development!
  ```
  Check my [`vagrant up` logs](https://gist.github.com/nisusam/49622102b7d4ea8661317fb311714e74).
- All The Best :thumbsup:. Happy Developement!

*NOTE*: If you hit with any issues, consider checking the [development issues list](ISSUES.md).
 
Be happy if you found your issue :wink:! 

And if not, try to solve it by your own and help in growing the above list by providing the solution :smile:.
