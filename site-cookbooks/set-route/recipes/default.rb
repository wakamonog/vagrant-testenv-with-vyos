#
# Cookbook Name:: set-route
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
route node["add_route"]["address"] do
    action :add
    gateway node["add_route"]["gateway"]
end
