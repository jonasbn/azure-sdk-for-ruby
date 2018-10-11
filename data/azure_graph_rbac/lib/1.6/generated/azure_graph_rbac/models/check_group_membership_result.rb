# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Server response for IsMemberOf API call
    #
    class CheckGroupMembershipResult

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [Boolean] True if the specified user, group, contact, or
      # service principal has either direct or transitive membership in the
      # specified group; otherwise, false.
      attr_accessor :value


      #
      # Mapper for CheckGroupMembershipResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckGroupMembershipResult',
          type: {
            name: 'Composite',
            class_name: 'CheckGroupMembershipResult',
            model_properties: {
              additional_properties: {
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
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
