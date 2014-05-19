#
# Cookbook Name:: change-apt-server
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file '/etc/apt/sources.list' do
	_file = Chef::Util::FileEdit.new(path)
	_file.search_file_replace('us.archive.ubuntu.com', "ftp.jaist.ac.jp")
	content _file.send(:contents).join
end