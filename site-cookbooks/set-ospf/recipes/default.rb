#
# Cookbook Name:: set-ospf
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "set-ospf.sh" do
    path "/home/vagrant/set-ospf.sh"
    source "set-ospf.erb"
    owner "vagrant"
    mode 0755
end

bash "set-ospf.sh" do
    cwd "/home/vagrant"
    code "./set-ospf.sh"
end

service "vyatta-quagga" do
    supports :status => true, :restart => true
    action :restart
end

service "vyatta-router" do
    supports :status => true, :restart => true
    action :restart
end
