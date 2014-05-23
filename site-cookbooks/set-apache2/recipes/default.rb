#
# Cookbook Name:: git-clone
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "apache2" do
    action :install
end

pachage "libapache2-mod-wsgi" do
    action :install
end

package "python-mysqldb" do
	action :install
end

package "python-cheetah" do
    action :install
end

cookbook_file "/etc/apache2/sites-available/default" do
    mode 644
end

directory "/var/www/wsgi/" do
    owner "root"
    group "root"
    action :create
end

service "apache2" do
    supports :status => true, :restart => true, :reload => true
    action :restart
end

git "/var/www/wsgi/test" do
    repository "https://github.com/kakky0312/test-scripts.git"
    revision "master"
    action :checkout
    user "root"
    group "root"
end
