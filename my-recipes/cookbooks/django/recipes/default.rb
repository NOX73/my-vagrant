package "python-django"

postgresql_user "vagrant" do
  privileges :superuser => true, :createdb => true, :inherit => true, :login => true
end

postgresql_database "vagrant" do
  languages ["plpgsql"]
end

package "python-psycopg2"
package "libpq-dev"
package "python-dev"

#template '/etc/nginx/sites-available/djproject' do
#  source "nginx_host.conf.erb"
#
#  notifies :restart, resources(:service => "nginx")
#end
#link '/etc/nginx/sites-enabled/djproject' do
#  to '/etc/nginx/sites-available/djproject'
#end
