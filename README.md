# Elasticsearch-Cookbook

This documentation describes how to generate cookbook `chef generate cookbook elasticsearch`

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