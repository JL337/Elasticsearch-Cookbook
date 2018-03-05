#
# Cookbook:: elasticsearch
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update

package 'elasticsearch' do
	action :install
end

# elasticsearch_configure 'elasticsearch' do
# allocated_memory '256m'
# configuration ({
# 'cluster.name' => 'test-cluster',
# 'node.name' => 'test-node'
# })
# end

service 'elasticsearch' do
	action [:enable, :start]
end
