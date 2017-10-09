# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # HvrA provider specific input for failback.
    #
    class HyperVReplicaAzureFailbackProviderInput < ProviderSpecificFailoverInput

      include MsRestAzure


      def initialize
        @instanceType = "HyperVReplicaAzureFailback"
      end

      attr_accessor :instanceType

      # @return [String] Data sync option.
      attr_accessor :data_sync_option

      # @return [String] ALR options to create alternate recovery.
      attr_accessor :recovery_vm_creation_option

      # @return [String] Provider ID for alternate location
      attr_accessor :provider_id_for_alternate_recovery


      #
      # Mapper for HyperVReplicaAzureFailbackProviderInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HyperVReplicaAzureFailback',
          type: {
            name: 'Composite',
            class_name: 'HyperVReplicaAzureFailbackProviderInput',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              data_sync_option: {
                required: false,
                serialized_name: 'dataSyncOption',
                type: {
                  name: 'String'
                }
              },
              recovery_vm_creation_option: {
                required: false,
                serialized_name: 'recoveryVmCreationOption',
                type: {
                  name: 'String'
                }
              },
              provider_id_for_alternate_recovery: {
                required: false,
                serialized_name: 'providerIdForAlternateRecovery',
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
