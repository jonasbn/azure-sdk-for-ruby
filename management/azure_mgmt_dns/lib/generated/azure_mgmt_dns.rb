# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_dns/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Dns
  autoload :RecordSets,                                         'generated/azure_mgmt_dns/record_sets.rb'
  autoload :Zones,                                              'generated/azure_mgmt_dns/zones.rb'
  autoload :DnsManagementClient,                                'generated/azure_mgmt_dns/dns_management_client.rb'

  module Models
    autoload :RecordSet,                                          'generated/azure_mgmt_dns/models/record_set.rb'
    autoload :ARecord,                                            'generated/azure_mgmt_dns/models/arecord.rb'
    autoload :RecordSetUpdateParameters,                          'generated/azure_mgmt_dns/models/record_set_update_parameters.rb'
    autoload :MxRecord,                                           'generated/azure_mgmt_dns/models/mx_record.rb'
    autoload :RecordSetListResult,                                'generated/azure_mgmt_dns/models/record_set_list_result.rb'
    autoload :PtrRecord,                                          'generated/azure_mgmt_dns/models/ptr_record.rb'
    autoload :SrvRecord,                                          'generated/azure_mgmt_dns/models/srv_record.rb'
    autoload :CnameRecord,                                        'generated/azure_mgmt_dns/models/cname_record.rb'
    autoload :ZoneDeleteResult,                                   'generated/azure_mgmt_dns/models/zone_delete_result.rb'
    autoload :AaaaRecord,                                         'generated/azure_mgmt_dns/models/aaaa_record.rb'
    autoload :ZoneListResult,                                     'generated/azure_mgmt_dns/models/zone_list_result.rb'
    autoload :TxtRecord,                                          'generated/azure_mgmt_dns/models/txt_record.rb'
    autoload :NsRecord,                                           'generated/azure_mgmt_dns/models/ns_record.rb'
    autoload :SoaRecord,                                          'generated/azure_mgmt_dns/models/soa_record.rb'
    autoload :Zone,                                               'generated/azure_mgmt_dns/models/zone.rb'
    autoload :OperationStatus,                                    'generated/azure_mgmt_dns/models/operation_status.rb'
    autoload :HttpStatusCode,                                     'generated/azure_mgmt_dns/models/http_status_code.rb'
    autoload :RecordType,                                         'generated/azure_mgmt_dns/models/record_type.rb'
  end
end