# Elasticsearch Cookbook

This documentation describes how to generate a cookbook for Elasticsearch.

 `chef generate cookbook elasticsearch`

## Requirements

Install these programs:

[Chef DK - 2.4.17](https://downloads.chef.io/chefdk) (2.4.17)

[Virtual Box](https://www.virtualbox.org/wiki/Downloads) (5.2.6)

[Vagrant](https://www.vagrantup.com/downloads.html)

## Useage

Clone down this repository to a directory of your choice, eg. `elasticsearch-cookbook`

Create a VM with chef in the same repository:

		kitchen create
		
Provisions the virtual machine with the recipes:
	
		kitchen converge
		
Remove the VM:

		kitchen destroy
		
Run Tests to check correct `recipes` have been downloaded:

		kitchen verify
		
To Create, converge and verify sequentially:

		kitchen test
		

To login to the virtual machine:

		kitchen login
		
		
Access elasticsearch on VM:

`kitchen login`

`cd /etc/elasticsearch`
