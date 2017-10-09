# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # Definition of canonical profile.
    #
    class CanonicalProfileDefinition

      include MsRestAzure

      # @return [Integer] Canonical profile ID.
      attr_accessor :canonical_profile_id

      # @return [Array<CanonicalProfileDefinitionPropertiesItem>] Properties of
      # the canonical profile.
      attr_accessor :properties


      #
      # Mapper for CanonicalProfileDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CanonicalProfileDefinition',
          type: {
            name: 'Composite',
            class_name: 'CanonicalProfileDefinition',
            model_properties: {
              canonical_profile_id: {
                required: false,
                serialized_name: 'canonicalProfileId',
                type: {
                  name: 'Number'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CanonicalProfileDefinitionPropertiesItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CanonicalProfileDefinitionPropertiesItem'
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
