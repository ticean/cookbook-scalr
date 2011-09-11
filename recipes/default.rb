#
# Cookbook Name:: scalr
# Recipe:: default
#
# Copyright 2011, Ticean Bennett
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


# Install ruby gem to parse ini.
gem_package "inifile" do
  action :install
end

ruby_block "save_scalr_attributes" do
  block do
    require 'inifile'
    ini = IniFile.load(node['scalr']['configini'], :parameter => '=')
    snmp = ini['snmp']
    general = ini['general']
    node.set['scalr']['snmp']['community_name'] = snmp['community_name']
    node.set['scalr']['snmp']['security_name'] = snmp['security_name']
    node.set['scalr']['general']['server_id'] = general['server_id']
    node.set['scalr']['general']['role_name'] = general['role_name']
    node.set['scalr']['general']['queryenv_url'] = general['queryenv_url']
    node.save
  end
end




