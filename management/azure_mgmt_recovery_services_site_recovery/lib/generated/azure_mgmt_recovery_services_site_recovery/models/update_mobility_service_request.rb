# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Request to update the mobility service on a protected item.
    #
    class UpdateMobilityServiceRequest

      include MsRestAzure

      # @return [UpdateMobilityServiceRequestProperties] The properties of the
      # update mobility service request.
      attr_accessor :properties


      #
      # Mapper for UpdateMobilityServiceRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateMobilityServiceRequest',
          type: {
            name: 'Composite',
            class_name: 'UpdateMobilityServiceRequest',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'UpdateMobilityServiceRequestProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
