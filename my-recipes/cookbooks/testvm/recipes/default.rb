include_recipe "apt"
include_recipe "rvm::system"
include_recipe "rvm::user"
#include_recipe "nginx"

package "vim"
package "git-core"

