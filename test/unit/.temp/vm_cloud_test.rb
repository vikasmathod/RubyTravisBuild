#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "integration/test_helper"

# describe Azure::VirtualMachineManagementService do
#   subject { Azure::VirtualMachineManagementService.new }
#   let(:u_name) { 'adminuser' }
#   let(:u_pass) { 'Asdf123$' }
#   let(:image_name) { '0b11de9248dd4d87b18621318e037d37__RightImage-CentOS-6.2-x64-v5.8.8.1' }

#   let(:cs_name) { 'anothercloudservice' }
#   let(:deployment_name) { 'testdeployment' }
#   let(:sa_name) { 'testdeejay3storagefbgus' }
#   let(:subnet) { 'Subnet-1' }

#   let(:location) { 'East Asia' }

#   let(:params_one) {
#     {
#       vm_name: 'test-deejay-1',
#       vm_user: u_name,
#       password: u_pass,
#       image: image_name,
#       location: location    }
#   }
#   let(:params_two) {
#     {
#       vm_name: 'test-deejay-2',
#       vm_user: u_name,
#       password: u_pass,
#       image: image_name,
#       location: location,
#       ssh_port: '53222'
#     }
#   }
#   let(:options_one) {
#     {
#       cloud_service_name: cs_name,
#       storage_account_name: sa_name,
#       subnet_name: subnet,
#       ssh_port: '54222',
#       deployment_name: deployment_name
#     }
#   }

#   let(:options_two) {
#     {
#       cloud_service_name: cs_name,
#       storage_account_name: sa_name,
#       subnet_name: subnet,
#       ssh_port: '53222',
#       deployment_name: deployment_name
#     }
#   }

#   # it "creates a new virtual machine in #{options[:cloud_service_name]}" do
#   #   subject.create_virtual_machine(params, options, true)
#   # end

#   let(:cloud_options) {
#     {
#       description: 'Test Cloud Service',
#       location: location
#     }
#   }

#   it "create a new cloud service, deployment and adds role to it" do
#     # cs = Azure::CloudServiceManagementService.new
#     # cs.create_cloud_service(cs_name, cloud_options)
#     subject.create_virtual_machine(params_one, options_one)
#     subject.create_virtual_machine(params_two, options_two, true)
#   end
# end
# describe 'Update Storage Account' do
#   subject { Azure::StorageManagement::StorageManagementService.new }
#   let(:storage_name) { 'testdjonestorage' }
#   options = {
#       :label=>"My Label",
#   }

#   it 'Updates a storage account' do
#     subject.update_storage_account(storage_name, options)
#   end

#   it 'checks that the label is a Base64 decoded string' do
#     storage_account = subject.get_storage_account_properties(storage_name)
#     storage_account.label.must_equal(options[:label])
#     puts "Label is: #{storage_account.label}"
#   end
# end

# describe Azure::CloudServiceManagementService do
#   subject { Azure::CloudServiceManagementService.new } 

#   let (:name) { 'djzonemorecloudone' }
#   let (:options) {
#     {
#       label: 'my label',
#       description: 'my description',
#       location: 'East Asia',
#       extended_properties: {
#         prop_1_name: 'prop_1_value',
#         prop_2_name: 'prop_2_value'
#       }
#     }
#   }

#   it 'creates a cloud service' do
#     subject.create_cloud_service(name, options)
#     clouds = subject.list_cloud_services
#     clouds.each do |cloud|
#       puts "Name: #{cloud.name}"
#       unless cloud.extended_properties.nil? || cloud.extended_properties.empty?
#         puts 'Extended Properties'
#         puts '-'*50
#         cloud.extended_properties.each do |p_name, p_value|
#           puts "#{p_name}:#{p_value}"
#         end unless cloud.extended_properties.nil?
#         puts '-'*50
#       end
#     end
#   end
  # subject { Azure::SqlDatabaseManagementService.new }

  # describe '#set_sql_server_firewall_rule' do
  #   it 'create sql server' do
  #     ip_range = { start_ip_address: '0.0.0.1', end_ip_address: '0.0.0.5' }
  #     exception = assert_raises(RuntimeError) do
  #       subject.set_sql_server_firewall_rule('zv2nfoah2t1', ip_range)
  #     end
  #     assert_match(/Missing parameter server_name or rule_name/i,
  #                  exception.message)
  #   end
  # end

  describe 'Create virtual network with invalid subnet' do
    it 'checks for invalid subnet and throws an exception' do
      options = {
          subnet: [{ name: 'Subnet-1', ip_address: '10.0.0.0/8', cidr: 12 }],
          dns: [{ name: 'demodns', ip_address: '2.3.4.5' }]
      }

      exception = assert_raises(RuntimeError) do
        subject.set_network_configuration(in_vnet_name,
                                          in_affinity_name,
                                          in_address_space,
                                          options)
      end
      assert_match(xml_err_msg, exception.message)
    end
  end
end
