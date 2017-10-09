# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # Valid enum values in case of an enum property.
    #
    class ProfileEnumValidValuesFormat

      include MsRestAzure

      # @return [Integer] The integer value of the enum member.
      attr_accessor :value

      # @return [Hash{String => String}] Localized names of the enum member.
      attr_accessor :localized_value_names


      #
      # Mapper for ProfileEnumValidValuesFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProfileEnumValidValuesFormat',
          type: {
            name: 'Composite',
            class_name: 'ProfileEnumValidValuesFormat',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Number'
                }
              },
              localized_value_names: {
                required: false,
                serialized_name: 'localizedValueNames',
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
