# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # Parameters supplied to the Update Logger operation.
    #
    class LoggerUpdateParameters

      include MsRestAzure

      # @return [String] Logger type. Default value: 'AzureEventHub' .
      attr_accessor :type

      # @return [String] Logger description.
      attr_accessor :description

      # @return [Hash{String => String}] Logger credentials.
      attr_accessor :credentials

      # @return [Boolean] whether records are buffered in the logger before
      # publishing. Default is assumed to be true.
      attr_accessor :is_buffered


      #
      # Mapper for LoggerUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LoggerUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'LoggerUpdateParameters',
            model_properties: {
              type: {
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'AzureEventHub',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              credentials: {
                required: false,
                serialized_name: 'credentials',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_buffered: {
                required: false,
                serialized_name: 'isBuffered',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
