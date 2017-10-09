# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Recovery plan unplanned failover input properties.
    #
    class RecoveryPlanUnplannedFailoverInputProperties

      include MsRestAzure

      # @return [PossibleOperationsDirections] The failover direction. Possible
      # values include: 'PrimaryToRecovery', 'RecoveryToPrimary'
      attr_accessor :failover_direction

      # @return [SourceSiteOperations] A value indicating whether source site
      # operations are required. Possible values include: 'Required',
      # 'NotRequired'
      attr_accessor :source_site_operations

      # @return [Array<RecoveryPlanProviderSpecificFailoverInput>] The provider
      # specific properties.
      attr_accessor :provider_specific_details


      #
      # Mapper for RecoveryPlanUnplannedFailoverInputProperties class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoveryPlanUnplannedFailoverInputProperties',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanUnplannedFailoverInputProperties',
            model_properties: {
              failover_direction: {
                required: true,
                serialized_name: 'failoverDirection',
                type: {
                  name: 'Enum',
                  module: 'PossibleOperationsDirections'
                }
              },
              source_site_operations: {
                required: true,
                serialized_name: 'sourceSiteOperations',
                type: {
                  name: 'Enum',
                  module: 'SourceSiteOperations'
                }
              },
              provider_specific_details: {
                required: false,
                serialized_name: 'providerSpecificDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecoveryPlanProviderSpecificFailoverInputElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'instanceType',
                        uber_parent: 'RecoveryPlanProviderSpecificFailoverInput',
                        class_name: 'RecoveryPlanProviderSpecificFailoverInput'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
