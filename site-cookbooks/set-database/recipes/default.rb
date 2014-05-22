#
# Cookbook Name:: set-database
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute 
#
include_recipe 'database::mysql'

mysql_connection_info = {
    :host => 'localhost',
    :username => 'root',
    :password => 'vagrant'
}

database "personal" do
    connection mysql_connection_info
    provider Chef::Provider::Database::Mysql
    action :create
end

cookbook_file "/home/vagrant/dump.sql" do
    mode 0644
end

bash "set-data" do
    cwd "/home/vagrant/"
    code "mysql -u root --password=vagrant < ./dump.sql"
end

mysql_database_user "vagrant" do
    connection mysql_connection_info
    password "vagrant"
    database_name "personal"
    host "%"
    privileges [:all]
    action [:create, :grant]
end
