# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # The parameters supplied to the create or update connection operation.
    #
    class ConnectionCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] Gets or sets the name of the connection.
      attr_accessor :name

      # @return [String] Gets or sets the description of the connection.
      attr_accessor :description

      # @return [ConnectionTypeAssociationProperty] Gets or sets the
      # connectionType of the connection.
      attr_accessor :connection_type

      # @return [Hash{String => String}] Gets or sets the field definition
      # properties of the connection.
      attr_accessor :field_definition_values


      #
      # Mapper for ConnectionCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectionCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ConnectionCreateOrUpdateParameters',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              connection_type: {
                required: true,
                serialized_name: 'properties.connectionType',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionTypeAssociationProperty'
                }
              },
              field_definition_values: {
                required: false,
                serialized_name: 'properties.fieldDefinitionValues',
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
              }
            }
          }
        }
      end
    end
  end
end
