# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Recovery plan updation properties.
    #
    class UpdateRecoveryPlanInputProperties

      include MsRestAzure

      # @return [Array<RecoveryPlanGroup>] The recovery plan groups.
      attr_accessor :groups


      #
      # Mapper for UpdateRecoveryPlanInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateRecoveryPlanInputProperties',
          type: {
            name: 'Composite',
            class_name: 'UpdateRecoveryPlanInputProperties',
            model_properties: {
              groups: {
                required: false,
                serialized_name: 'groups',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecoveryPlanGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecoveryPlanGroup'
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
