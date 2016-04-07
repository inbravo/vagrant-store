#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2014, Impetus
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Take message value from attributes
message = node['my_cookbook']['message']

# Log the message as info
Chef::Log.info("** Saying what I was told to say: #{message}")

template '/tmp/message' do
source 'message.erb'
variables(
	hi: 'namste',
	world: 'sansari again',
	from: node['fqdn']
)
end

chef_gem 'ipaddress'

require 'ipaddress'

# Create IP address of box
ip = IPAddress("192.168.0.1/24")
Chef::Log.info("---Netmask of #{ip}: #{ip.netmask}")

ip = '10.10.0.0/24'
mask = IPAddress.netmask(ip) # here we use the library method
Chef::Log.info("---Netmask of #{ip}: #{mask}")
