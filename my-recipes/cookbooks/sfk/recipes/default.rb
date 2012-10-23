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