# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Properties describing hair attributes.
    #
    class Hair

      include MsRestAzure

      # @return [Float] A number describing confidence level of whether the
      # person is bald.
      attr_accessor :bald

      # @return [Boolean] A boolean value describing whether the hair is
      # visible in the image.
      attr_accessor :invisible

      # @return [Array<HairColor>] An array of candidate colors and confidence
      # level in the presence of each.
      attr_accessor :hair_color


      #
      # Mapper for Hair class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Hair',
          type: {
            name: 'Composite',
            class_name: 'Hair',
            model_properties: {
              bald: {
                required: false,
                serialized_name: 'bald',
                type: {
                  name: 'Double'
                }
              },
              invisible: {
                required: false,
                serialized_name: 'invisible',
                type: {
                  name: 'Boolean'
                }
              },
              hair_color: {
                required: false,
                serialized_name: 'hairColor',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HairColorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HairColor'
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
