# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Input required to update vCenter.
    #
    class UpdateVCenterRequest

      include MsRestAzure

      # @return [UpdateVCenterRequestProperties] The update VCenter Request
      # Properties.
      attr_accessor :properties


      #
      # Mapper for UpdateVCenterRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateVCenterRequest',
          type: {
            name: 'Composite',
            class_name: 'UpdateVCenterRequest',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'UpdateVCenterRequestProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
