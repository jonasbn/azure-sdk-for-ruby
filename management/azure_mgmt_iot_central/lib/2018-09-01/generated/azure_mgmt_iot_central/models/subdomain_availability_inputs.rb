# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotCentral::Mgmt::V2018_09_01
  module Models
    #
    # Input values.
    #
    class SubdomainAvailabilityInputs

      include MsRestAzure

      # @return [String] The subdomain of the IoT Central application instance
      # to check.
      attr_accessor :subdomain

      # @return [String] The type of the IoT Central resource to query. Default
      # value: 'IoTApps' .
      attr_accessor :type


      #
      # Mapper for SubdomainAvailabilityInputs class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SubdomainAvailabilityInputs',
          type: {
            name: 'Composite',
            class_name: 'SubdomainAvailabilityInputs',
            model_properties: {
              subdomain: {
                required: true,
                serialized_name: 'subdomain',
                constraints: {
                  Pattern: '^[a-z0-9-]{1,63}$'
                },
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                default_value: 'IoTApps',
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
