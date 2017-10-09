# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Switch protection input.
    #
    class SwitchProtectionInput

      include MsRestAzure

      # @return [SwitchProtectionInputProperties] Switch protection properties
      attr_accessor :properties


      #
      # Mapper for SwitchProtectionInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SwitchProtectionInput',
          type: {
            name: 'Composite',
            class_name: 'SwitchProtectionInput',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'SwitchProtectionInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
