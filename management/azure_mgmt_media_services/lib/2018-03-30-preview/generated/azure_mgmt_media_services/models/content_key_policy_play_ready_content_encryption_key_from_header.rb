# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Specifies that the content key ID is in the PlayReady header.
    #
    class ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader < ContentKeyPolicyPlayReadyContentKeyLocation

      include MsRestAzure


      def initialize
        @@odatatype = "#Microsoft.Media.ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader"
      end

      attr_accessor :@odatatype


      #
      # Mapper for ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
      # class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader',
            model_properties: {
              @odatatype: {
                required: true,
                serialized_name: '@odata\\.type',
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
