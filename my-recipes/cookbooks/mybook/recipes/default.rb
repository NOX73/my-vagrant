package "vim"
package "git-core"
ppa "pitti/postgresql"


template '/etc/rc.local' do
  source "rc.local.erb"
end

