# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Operation request/response representation details.
    #
    class RepresentationContract

      include MsRestAzure

      # @return [String] Specifies a registered or custom content type for this
      # representation, e.g. application/xml.
      attr_accessor :content_type

      # @return [String] An example of the representation.
      attr_accessor :sample


      #
      # Mapper for RepresentationContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RepresentationContract',
          type: {
            name: 'Composite',
            class_name: 'RepresentationContract',
            model_properties: {
              content_type: {
                required: true,
                serialized_name: 'contentType',
                type: {
                  name: 'String'
                }
              },
              sample: {
                required: false,
                serialized_name: 'sample',
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
