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
require '2018-03-01/generated/azure_mgmt_redis/module_definition'
require 'ms_rest_azure'

module Azure::Redis::Mgmt::V2018_03_01
  autoload :Operations,                                         '2018-03-01/generated/azure_mgmt_redis/operations.rb'
  autoload :Redis,                                              '2018-03-01/generated/azure_mgmt_redis/redis.rb'
  autoload :FirewallRules,                                      '2018-03-01/generated/azure_mgmt_redis/firewall_rules.rb'
  autoload :PatchSchedules,                                     '2018-03-01/generated/azure_mgmt_redis/patch_schedules.rb'
  autoload :LinkedServer,                                       '2018-03-01/generated/azure_mgmt_redis/linked_server.rb'
  autoload :RedisManagementClient,                              '2018-03-01/generated/azure_mgmt_redis/redis_management_client.rb'

  module Models
    autoload :RedisRebootParameters,                              '2018-03-01/generated/azure_mgmt_redis/models/redis_reboot_parameters.rb'
    autoload :Sku,                                                '2018-03-01/generated/azure_mgmt_redis/models/sku.rb'
    autoload :ExportRDBParameters,                                '2018-03-01/generated/azure_mgmt_redis/models/export_rdbparameters.rb'
    autoload :RedisListResult,                                    '2018-03-01/generated/azure_mgmt_redis/models/redis_list_result.rb'
    autoload :RedisAccessKeys,                                    '2018-03-01/generated/azure_mgmt_redis/models/redis_access_keys.rb'
    autoload :RedisRegenerateKeyParameters,                       '2018-03-01/generated/azure_mgmt_redis/models/redis_regenerate_key_parameters.rb'
    autoload :Resource,                                           '2018-03-01/generated/azure_mgmt_redis/models/resource.rb'
    autoload :NotificationListResponse,                           '2018-03-01/generated/azure_mgmt_redis/models/notification_list_response.rb'
    autoload :OperationListResult,                                '2018-03-01/generated/azure_mgmt_redis/models/operation_list_result.rb'
    autoload :RedisUpdateParameters,                              '2018-03-01/generated/azure_mgmt_redis/models/redis_update_parameters.rb'
    autoload :ImportRDBParameters,                                '2018-03-01/generated/azure_mgmt_redis/models/import_rdbparameters.rb'
    autoload :RedisFirewallRuleCreateParameters,                  '2018-03-01/generated/azure_mgmt_redis/models/redis_firewall_rule_create_parameters.rb'
    autoload :ScheduleEntry,                                      '2018-03-01/generated/azure_mgmt_redis/models/schedule_entry.rb'
    autoload :CheckNameAvailabilityParameters,                    '2018-03-01/generated/azure_mgmt_redis/models/check_name_availability_parameters.rb'
    autoload :Operation,                                          '2018-03-01/generated/azure_mgmt_redis/models/operation.rb'
    autoload :RedisPatchScheduleListResult,                       '2018-03-01/generated/azure_mgmt_redis/models/redis_patch_schedule_list_result.rb'
    autoload :UpgradeNotification,                                '2018-03-01/generated/azure_mgmt_redis/models/upgrade_notification.rb'
    autoload :RedisForceRebootResponse,                           '2018-03-01/generated/azure_mgmt_redis/models/redis_force_reboot_response.rb'
    autoload :RedisLinkedServer,                                  '2018-03-01/generated/azure_mgmt_redis/models/redis_linked_server.rb'
    autoload :OperationDisplay,                                   '2018-03-01/generated/azure_mgmt_redis/models/operation_display.rb'
    autoload :RedisFirewallRuleListResult,                        '2018-03-01/generated/azure_mgmt_redis/models/redis_firewall_rule_list_result.rb'
    autoload :RedisLinkedServerWithPropertiesList,                '2018-03-01/generated/azure_mgmt_redis/models/redis_linked_server_with_properties_list.rb'
    autoload :RedisCreateParameters,                              '2018-03-01/generated/azure_mgmt_redis/models/redis_create_parameters.rb'
    autoload :RedisLinkedServerCreateParameters,                  '2018-03-01/generated/azure_mgmt_redis/models/redis_linked_server_create_parameters.rb'
    autoload :ProxyResource,                                      '2018-03-01/generated/azure_mgmt_redis/models/proxy_resource.rb'
    autoload :TrackedResource,                                    '2018-03-01/generated/azure_mgmt_redis/models/tracked_resource.rb'
    autoload :RedisFirewallRule,                                  '2018-03-01/generated/azure_mgmt_redis/models/redis_firewall_rule.rb'
    autoload :RedisResource,                                      '2018-03-01/generated/azure_mgmt_redis/models/redis_resource.rb'
    autoload :RedisPatchSchedule,                                 '2018-03-01/generated/azure_mgmt_redis/models/redis_patch_schedule.rb'
    autoload :RedisLinkedServerWithProperties,                    '2018-03-01/generated/azure_mgmt_redis/models/redis_linked_server_with_properties.rb'
    autoload :SkuName,                                            '2018-03-01/generated/azure_mgmt_redis/models/sku_name.rb'
    autoload :SkuFamily,                                          '2018-03-01/generated/azure_mgmt_redis/models/sku_family.rb'
    autoload :TlsVersion,                                         '2018-03-01/generated/azure_mgmt_redis/models/tls_version.rb'
    autoload :ProvisioningState,                                  '2018-03-01/generated/azure_mgmt_redis/models/provisioning_state.rb'
    autoload :RedisKeyType,                                       '2018-03-01/generated/azure_mgmt_redis/models/redis_key_type.rb'
    autoload :RebootType,                                         '2018-03-01/generated/azure_mgmt_redis/models/reboot_type.rb'
    autoload :DayOfWeek,                                          '2018-03-01/generated/azure_mgmt_redis/models/day_of_week.rb'
    autoload :ReplicationRole,                                    '2018-03-01/generated/azure_mgmt_redis/models/replication_role.rb'
  end
end