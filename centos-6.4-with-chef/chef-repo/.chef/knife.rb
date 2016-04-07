# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "inbravo"
client_key               "#{current_dir}/../opscode-security/inbravo.pem"
validation_client_name   "impetus-neustar-validator"
validation_key           "#{current_dir}/../opscode-security/impetus-neustar-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/impetus-neustar"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
