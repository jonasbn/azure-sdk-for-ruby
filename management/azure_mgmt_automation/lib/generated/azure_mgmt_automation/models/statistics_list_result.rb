# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # The response model for the list statistics operation.
    #
    class StatisticsListResult

      include MsRestAzure

      # @return [Array<Statistics>] Gets or sets a list of statistics.
      attr_accessor :value


      #
      # Mapper for StatisticsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StatisticsListResult',
          type: {
            name: 'Composite',
            class_name: 'StatisticsListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StatisticsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Statistics'
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
