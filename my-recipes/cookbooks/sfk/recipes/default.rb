link "/etc/vpnc" do
  to "/home/vagrant/Dropbox/etc/vpnc"
end

package "vpnc"
package "vim"
package "git-core"
package "curl"
package "libcurl4-gnutls-dev"
package "libcairo2-dev"
package "libpango1.0-dev"

execute 'run vpnc' do
  command 'vpnc'
  action :run
end

include_recipe "apt"
include_recipe "rvm::user"
include_recipe "zeromq-cookbook::default"

#group "rvm" do
#  action :modify
#  members "vagrant"
#  append true
#end

#/etc/apt/sources.list
#
#deb http://debmirror.undev.cc/undev squeeze xfonts
#
#Сделай
#wget -O- http://debmirror.undev.cc/undev/undev-mirror-key.asc | apt-key add -
#apt-get update
#
#После этого
#
#apt-get install xfonts-arial xfonts-circle xfonts-daxline xfonts-din xfonts-handbook xfonts-handbookpro xfonts-helvetica-neue xfonts-ptsans xfonts-russian-rail xfonts-times-new-roman xfonts-typotheque