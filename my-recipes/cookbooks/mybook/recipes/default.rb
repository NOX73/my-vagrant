package "vim"
package "git-core"
package "curl"
ppa "pitti/postgresql"


template '/etc/rc.local' do
  source "rc.local.erb"
end

