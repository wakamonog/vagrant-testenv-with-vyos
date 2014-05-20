#
# Cookbook Name:: change-apt-server
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/etc/apt/sources.list" do
    source "sources.list"
    mode 0644
end
