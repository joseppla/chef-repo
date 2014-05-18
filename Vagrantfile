Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu"
  config.omnibus.chef_version = :latest
#  config.butcher.enabled = true
#  config.butcher.guest_key_path = '/home/joseppla/repojpla/chef-repo/.chef/joseppla.pem'
#  config.butcher.verify_ssl = true
#  config.butcher.client_name = 'clientest1'
#  config.butcher.client_key = '/home/joseppla/repojpla/chef-repo/.chef/joseppla.pem'

  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/home/joseppla/repojpla/chef-repo/.chef"
    chef.chef_server_url = "https://api.opscode.com/organizations/platest"
    chef.validation_key_path = "/home/joseppla/repojpla/chef-repo/.chef/joseppla.pem"
    chef.validation_client_name = "platest"
    chef.node_name = "server"
  end
end 
