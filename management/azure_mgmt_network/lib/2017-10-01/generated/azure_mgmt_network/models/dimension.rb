# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_10_01
  module Models
    #
    # Dimension of the metric.
    #
    class Dimension

      include MsRestAzure

      # @return [String] The name of the dimension.
      attr_accessor :name

      # @return [String] The display name of the dimension.
      attr_accessor :display_name

      # @return [String] The internal name of the dimension.
      attr_accessor :internal_name


      #
      # Mapper for Dimension class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Dimension',
          type: {
            name: 'Composite',
            class_name: 'Dimension',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              internal_name: {
                required: false,
                serialized_name: 'internalName',
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
