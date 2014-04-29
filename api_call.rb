$LOAD_PATH << 'lib'

require 'azure'
# require "azure/virtual_machine_image_management/serialization"
# require "azure/virtual_machine_image_management/serialization"
# #require 'azure/affinity_group_management/serialization'
#require 'azure/virtual_network_management/serialization'
require 'azure/storage_management/serialization'
#require 'azure/virtual_machine_management/virtual_machine'


Azure.configure do |config|
  config.storage_access_key     = ENV["AZURE_STORAGE_ACCESS_KEY"]
  config.storage_account_name   = ENV["AZURE_STORAGE_ACCOUNT"]
  config.storage_table_host     = ENV["AZURE_STORAGE_TABLE_HOST"]
  config.storage_blob_host      = ENV["AZURE_STORAGE_BLOB_HOST"]
  config.storage_queue_host     = ENV["AZURE_STORAGE_QUEUE_HOST"]

  config.sb_namespace           = ENV["AZURE_SERVICEBUS_NAMESPACE"]
  config.sb_access_key          = ENV["AZURE_SERVICEBUS_ACCESS_KEY"]
  config.sb_issuer              = ENV["AZURE_SERVICEBUS_ISSUER"]


  
  # Configure these 2 properties to use Storage
  
  config.management_certificate = 'abc.pfx'
  #config.management_certificate = 'D:\Tushar\DB\ruby-sql_databases\decode.pem'
  #config.management_certificate = 'D:\Tushar\DB\ruby-sql_databases\decode.pem'
  config.subscription_id        = 'bfb5e0bf-124b-4d0c-9352-7c0a9f4d9948'									
  config.management_endpoint = 'https://management.core.windows.net'
  config.sql_database_authentication_mode = 'management_certificate'

end

#cloud = Azure::TrafficManager::TrafficManagerService.new
#traffic = Azure::TrafficManager::TrafficManagerService.new
 storage = Azure::StorageManagement::StorageManagementService.new
#virtual1 = Azure::VirtualMachineImageManagement::VirtualMachineDiskManagementService.new
#sql = Azure::SqlDatabaseManagement::SqlDatabaseManagementService.new
#cloud = Azure::CloudServiceManagement::CloudServiceManagementService.new
 # options = {
 # :label =>'samplelable',
 # :geo_replication_enabled =>'true',
 # :extended_properties =>[{:blobs =>'verbose'}],
 # }
 
 # options = {
 # :affinity_group_name => "agbabu1",
 # :extended_properties =>{:blobnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnns =>'$%$ASverbose', 
 # :testTerst=>'@#@#@test'},
 # }
 
 # deafultoptions = {
 # :affinity_group_name => "agbabu1",
 # :location => "West US",
 # :label => "ValidLabel",
 # :geo_replication_enabled => "false",
 # :extended_properties =>{:l0 =>'verbose'},
 # :desciption =>"Description"
 # }
 
 # options = {
 # :start_ip_address => '10.10.15.14',
 # :end_ip_address => '10.20.30.20'
 # }
 
 # options ={
 # :storage_account_name => 'Storage1'
 # }
 # ssh={
 # :cert => 'C:\Users\v-vikma\Ruby\ruby-storage_management-update-api\test\fixtures\certificate.pem',
 # :key => 'C:\Users\v-vikma\Ruby\ruby-storage_management-update-api\test\fixtures\privatekey.key'
 # }
 #params = {
 #:vm_name => 'vm_delete'
 #:vm_user => 'babu',
 #:password => 'Collabera@01',
 #:image => 'c290a6b031d841e09f2da759bbabe71f__Oracle-Database-121010.v1-EE-Lnx'
 #:location => 'West US'
 #}
   
   options = {
    :label => "labelchanged",
    :description => "description changed",
:geo_replication_enabled => false
    }
 
 #storage.list_virtual_machines()
 
 # storage.update_storage_account("bamurashare",options)
 # storage.get_storage_account_properties('bamurashare')
 #storage.delete_storage_account('rubytest163')
 #storage.list_storage_accounts()
 #storage.create_storage_account('rubytest171',options) 
 #cloud.list_cloud_services
# storage.list_storage_accounts 

#sql.reset_password('qz7kabdj5x','collabera@789')
#sql.list_servers
#sql.create_server('m','jjjj8khghg@hjkjjjj8khghg@hjkjjjj8khghg@hjkjjjj8khghg@hjkjjjj8khghg@hjkjjjj8khghg@hjkjjjj8khghg@hjkjjjj8khghg@hjkjjjj8khgh','West US')
#sql.delete_server('vikas890')
#sql.reset_password('gywdm4j1na', 'jjjj8khghg@hjk')
#sql.set_sql_server_firewall_rule('a5j6wdbn9w', 'rule_name2')
storage.delete_affinity_group('affinitygrouptest')
#sql.list_sql_server_firewall_rules('zzpb1yi7gx')
#sql.delete_sql_server_firewall_rule('zzpb1yi7gxvikas','rule_name')
# storage.list_storage_accounts

#storage.list_virtual_machines
#storage.get_virtual_machine('vmname1','vmname1-service-lqpyc')
#storage.create_virtual_machine(options,params,'false')
#virtual1.delete_virtual_machine_disk('OffshoreTestSsh-OffshoreTestSsh-0-201312231522240035')
#cloud.delete_cloud_service('abc')
#cloud.upload_certificate('c1',ssh)







