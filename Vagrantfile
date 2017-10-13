# -*- mode: ruby -*-
# vi: set ft=ruby :

$ppmscript = <<PPMSCRIPT
rpm -ivh "https://yum.puppetlabs.com/puppet/puppet-release-el-7.noarch.rpm"
yum -y --nogpgcheck install puppetserver
echo "192.168.10.2   ppm" >> /etc/hosts
echo "192.168.10.3   servera" >> /etc/hosts
useradd -u 1001 student
usermod -G wheel student
echo "student:student" | chpasswd
PPMSCRIPT

$agentscript = <<AGENTSCRIPT
rpm -ivh "https://yum.puppetlabs.com/puppet/puppet-release-el-7.noarch.rpm"
yum -y --nogpgcheck install puppet-agent
echo "192.168.10.2   ppm" >> /etc/hosts
echo "192.168.10.3   servera" >> /etc/hosts
useradd -u 1001 student
usermod -G wheel student
echo "student:student" | chpasswd
AGENTSCRIPT


Vagrant.configure("2") do |config|
  config.vm.define "ppm" do |ppm|
    ppm.vm.box = "centos/7"
    ppm.vm.provider 'virtualbox' do |v|
        v.memory = 4096
    end
    ppm.vm.network "private_network", ip: "192.168.10.2"
    ppm.vm.hostname = "ppm"
    ppm.vm.provision "shell" do |s|
        s.inline = $ppmscript
    end
  end

  config.vm.define "servera" do |servera|
    servera.vm.box = "centos/7"
    servera.vm.provider 'virtualbox' do |v|
        v.memory = 1024
    end
    servera.vm.network "private_network", ip: "192.168.10.3"
    servera.vm.hostname = "servera"
    servera.vm.provision "shell" do |s|
        s.inline = $agentscript
    end
  end
end
