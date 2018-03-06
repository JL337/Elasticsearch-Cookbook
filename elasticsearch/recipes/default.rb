#
# Cookbook:: elasticsearch
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update

# apt_repository 'elasticsearch' do
# 	uri 'https://artifacts.elastic.co/packages/6.x/apt'
# end

package 'elasticsearch' do
	action :upgrade
	version "6.2.2"	
end


service 'elasticsearch' do
	action [:enable, :start]
end

template '/etc/elasticsearch/elasticsearch.yml' do
	source 'elasticsearch.yml'
	owner 'root'
	group 'root'
	mode '750'
	notifies :restart, "service[elasticsearch]"
end