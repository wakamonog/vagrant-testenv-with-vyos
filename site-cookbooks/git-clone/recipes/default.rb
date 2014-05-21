#
# Cookbook Name:: git-clone
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/var/www/testing" do
    repository "https://github.com/kakky0312/testing.git"
    revision "master"
    action :checkout
    user "root"
    group "root"
end
