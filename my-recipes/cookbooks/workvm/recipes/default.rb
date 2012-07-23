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

backports_apt_package "redis-server" do
  provider Chef::Provider::Package::BackportsApt
end


#CHESS

#template '/etc/nginx/conf.d/chess.conf' do
#  source "nginx_host.conf.erb"
#  variables :deploy_to => '~/kaize/chess', :server_name => "localhost", :name => "chess"
#  notifies :restart, resources(:service => "nginx")
#end




#template '/etc/rc.local' do
#  source "rc.local.erb"
#end

