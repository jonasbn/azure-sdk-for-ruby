# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # Definition of the connection fields.
    #
    class FieldDefinition

      include MsRestAzure

      # @return [Boolean] Gets or sets the isEncrypted flag of the connection
      # field definition.
      attr_accessor :is_encrypted

      # @return [Boolean] Gets or sets the isOptional flag of the connection
      # field definition.
      attr_accessor :is_optional

      # @return [String] Gets or sets the type of the connection field
      # definition.
      attr_accessor :type


      #
      # Mapper for FieldDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FieldDefinition',
          type: {
            name: 'Composite',
            class_name: 'FieldDefinition',
            model_properties: {
              is_encrypted: {
                required: false,
                serialized_name: 'isEncrypted',
                type: {
                  name: 'Boolean'
                }
              },
              is_optional: {
                required: false,
                serialized_name: 'isOptional',
                type: {
                  name: 'Boolean'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
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
