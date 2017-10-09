# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # Connector mapping property availability.
    #
    class ConnectorMappingAvailability

      include MsRestAzure

      # @return [FrequencyTypes] The frequency to update. Possible values
      # include: 'Minute', 'Hour', 'Day', 'Week', 'Month'
      attr_accessor :frequency

      # @return [Integer] The interval of the given frequency to use.
      attr_accessor :interval


      #
      # Mapper for ConnectorMappingAvailability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectorMappingAvailability',
          type: {
            name: 'Composite',
            class_name: 'ConnectorMappingAvailability',
            model_properties: {
              frequency: {
                required: false,
                serialized_name: 'frequency',
                type: {
                  name: 'Enum',
                  module: 'FrequencyTypes'
                }
              },
              interval: {
                required: true,
                serialized_name: 'interval',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
