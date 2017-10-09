# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
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
require 'generated/azure_mgmt_consumption/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Consumption
  autoload :UsageDetails,                                       'generated/azure_mgmt_consumption/usage_details.rb'
  autoload :Operations,                                         'generated/azure_mgmt_consumption/operations.rb'
  autoload :ConsumptionManagementClient,                        'generated/azure_mgmt_consumption/consumption_management_client.rb'

  module Models
    autoload :ErrorResponse,                                      'generated/azure_mgmt_consumption/models/error_response.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_consumption/models/operation_display.rb'
    autoload :UsageDetailsListResult,                             'generated/azure_mgmt_consumption/models/usage_details_list_result.rb'
    autoload :Operation,                                          'generated/azure_mgmt_consumption/models/operation.rb'
    autoload :MeterDetails,                                       'generated/azure_mgmt_consumption/models/meter_details.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_consumption/models/operation_list_result.rb'
    autoload :ErrorDetails,                                       'generated/azure_mgmt_consumption/models/error_details.rb'
    autoload :Resource,                                           'generated/azure_mgmt_consumption/models/resource.rb'
    autoload :UsageDetail,                                        'generated/azure_mgmt_consumption/models/usage_detail.rb'
  end
end
