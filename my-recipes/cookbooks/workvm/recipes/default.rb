include_recipe "apt"
include_recipe "rvm::user"
include_recipe "nginx"
include_recipe "postgresql"
include_recipe "runit"

package "vim"
package "git-core"
package "curl"
#ppa "pitti/postgresql"

include_recipe "elasticsearch"

package 'imagemagick'
package 'exim4'

directory "/u/apps" do
  recursive true
  owner 'root'
  group 'root'
  mode "0777"
end

directory "~/kaize" do
  recursive true
  owner 'vagrant'
  group 'vagrant'
  mode "0755"
end

backports_apt_package "redis-server" do
  provider Chef::Provider::Package::BackportsApt
end

template '/etc/nginx/conf.d/proj.conf' do
  source "nginx_host.conf.erb"
  variables :server_name => "localhost", :name => "project"
  notifies :restart, resources(:service => "nginx")
end

group 'rvm' do
  members %w'vagrant'
  append true
end

#template '/etc/rc.local' do
#  source "rc.local.erb"
#end

