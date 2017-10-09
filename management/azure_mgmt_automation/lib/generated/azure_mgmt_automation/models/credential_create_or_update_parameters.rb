# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # The parameters supplied to the create or update credential operation.
    #
    class CredentialCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] Gets or sets the name of the credential.
      attr_accessor :name

      # @return [String] Gets or sets the user name of the credential.
      attr_accessor :user_name

      # @return [String] Gets or sets the password of the credential.
      attr_accessor :password

      # @return [String] Gets or sets the description of the credential.
      attr_accessor :description


      #
      # Mapper for CredentialCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CredentialCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'CredentialCreateOrUpdateParameters',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                required: true,
                serialized_name: 'properties.userName',
                type: {
                  name: 'String'
                }
              },
              password: {
                required: true,
                serialized_name: 'properties.password',
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
              }
            }
          }
        }
      end
    end
  end
end
