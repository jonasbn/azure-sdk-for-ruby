# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Recovery plan Automation runbook action details.
    #
    class RecoveryPlanAutomationRunbookActionDetails < RecoveryPlanActionDetails

      include MsRestAzure


      def initialize
        @instanceType = "AutomationRunbookActionDetails"
      end

      attr_accessor :instanceType

      # @return [String] The runbook ARM Id.
      attr_accessor :runbook_id

      # @return [String] The runbook timeout.
      attr_accessor :timeout

      # @return [RecoveryPlanActionLocation] The fabric location. Possible
      # values include: 'Primary', 'Recovery'
      attr_accessor :fabric_location


      #
      # Mapper for RecoveryPlanAutomationRunbookActionDetails class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutomationRunbookActionDetails',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanAutomationRunbookActionDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              runbook_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'runbookId',
                type: {
                  name: 'String'
                }
              },
              timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeout',
                type: {
                  name: 'String'
                }
              },
              fabric_location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'fabricLocation',
                type: {
                  name: 'Enum',
                  module: 'RecoveryPlanActionLocation'
                }
              }
            }
          }
        }
      end
    end
  end
end