# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Azure Workload SQL Auto Protection intent item.
    #
    class AzureWorkloadSQLAutoProtectionIntent < AzureWorkloadAutoProtectionIntent

      include MsRestAzure


      def initialize
        @protectionIntentItemType = "AzureWorkloadSQLAutoProtectionIntent"
      end

      attr_accessor :protectionIntentItemType

      # @return [WorkloadItemType] Workload item type of the item for which
      # intent is to be set. Possible values include: 'Invalid', 'SQLInstance',
      # 'SQLDataBase', 'SAPHanaSystem', 'SAPHanaDatabase'
      attr_accessor :workload_item_type


      #
      # Mapper for AzureWorkloadSQLAutoProtectionIntent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureWorkloadSQLAutoProtectionIntent',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadSQLAutoProtectionIntent',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              item_id: {
                required: false,
                serialized_name: 'itemId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              protectionIntentItemType: {
                required: true,
                serialized_name: 'protectionIntentItemType',
                type: {
                  name: 'String'
                }
              },
              workload_item_type: {
                required: false,
                serialized_name: 'workloadItemType',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
