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

package "python-mysqldb" do
	action :install
end

git "/usr/lib/cgi-bin/test" do
    repository "https://github.com/kakky0312/test-scripts.git"
    revision "master"
    action :checkout
    user "root"
    group "root"
end
