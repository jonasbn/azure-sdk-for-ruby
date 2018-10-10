# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # API OAuth2 Authentication settings details.
    #
    class OAuth2AuthenticationSettingsContract

      include MsRestAzure

      # @return [String] OAuth authorization server identifier.
      attr_accessor :authorization_server_id

      # @return [String] operations scope.
      attr_accessor :scope


      #
      # Mapper for OAuth2AuthenticationSettingsContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OAuth2AuthenticationSettingsContract',
          type: {
            name: 'Composite',
            class_name: 'OAuth2AuthenticationSettingsContract',
            model_properties: {
              authorization_server_id: {
                required: false,
                serialized_name: 'authorizationServerId',
                type: {
                  name: 'String'
                }
              },
              scope: {
                required: false,
                serialized_name: 'scope',
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