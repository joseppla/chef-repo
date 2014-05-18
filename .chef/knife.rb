# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "joseppla"
client_key               "#{current_dir}/joseppla.pem"
validation_client_name   "platest-validator"
validation_key           "#{current_dir}/platest-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/platest"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright "Josep Pla"
cookbook_license "apachev2"
cookbook_email "joseppla@gmail.com"
