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
    # Azure backup goal feature specific request.
    #
    class AzureBackupGoalFeatureSupportRequest < FeatureSupportRequest

      include MsRestAzure


      def initialize
        @featureType = "AzureBackupGoals"
      end

      attr_accessor :featureType


      #
      # Mapper for AzureBackupGoalFeatureSupportRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureBackupGoals',
          type: {
            name: 'Composite',
            class_name: 'AzureBackupGoalFeatureSupportRequest',
            model_properties: {
              featureType: {
                required: true,
                serialized_name: 'featureType',
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
