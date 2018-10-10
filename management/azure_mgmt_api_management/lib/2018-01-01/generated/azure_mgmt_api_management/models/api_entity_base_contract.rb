# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # API base contract details.
    #
    class ApiEntityBaseContract

      include MsRestAzure

      # @return [String] Description of the API. May include HTML formatting
      # tags.
      attr_accessor :description

      # @return [AuthenticationSettingsContract] Collection of authentication
      # settings included into this API.
      attr_accessor :authentication_settings

      # @return [SubscriptionKeyParameterNamesContract] Protocols over which
      # API is made available.
      attr_accessor :subscription_key_parameter_names

      # @return [ApiType] Type of API. Possible values include: 'http', 'soap'
      attr_accessor :api_type

      # @return [String] Describes the Revision of the Api. If no value is
      # provided, default revision 1 is created
      attr_accessor :api_revision

      # @return [String] Indicates the Version identifier of the API if the API
      # is versioned
      attr_accessor :api_version

      # @return [Boolean] Indicates if API revision is current api revision.
      attr_accessor :is_current

      # @return [Boolean] Indicates if API revision is accessible via the
      # gateway.
      attr_accessor :is_online

      # @return [String] Description of the Api Revision.
      attr_accessor :api_revision_description

      # @return [String] Description of the Api Version.
      attr_accessor :api_version_description

      # @return [String] A resource identifier for the related ApiVersionSet.
      attr_accessor :api_version_set_id


      #
      # Mapper for ApiEntityBaseContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiEntityBaseContract',
          type: {
            name: 'Composite',
            class_name: 'ApiEntityBaseContract',
            model_properties: {
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              authentication_settings: {
                required: false,
                serialized_name: 'authenticationSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AuthenticationSettingsContract'
                }
              },
              subscription_key_parameter_names: {
                required: false,
                serialized_name: 'subscriptionKeyParameterNames',
                type: {
                  name: 'Composite',
                  class_name: 'SubscriptionKeyParameterNamesContract'
                }
              },
              api_type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              api_revision: {
                required: false,
                serialized_name: 'apiRevision',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              api_version: {
                required: false,
                serialized_name: 'apiVersion',
                constraints: {
                  MaxLength: 100
                },
                type: {
                  name: 'String'
                }
              },
              is_current: {
                required: false,
                read_only: true,
                serialized_name: 'isCurrent',
                type: {
                  name: 'Boolean'
                }
              },
              is_online: {
                required: false,
                read_only: true,
                serialized_name: 'isOnline',
                type: {
                  name: 'Boolean'
                }
              },
              api_revision_description: {
                required: false,
                serialized_name: 'apiRevisionDescription',
                constraints: {
                  MaxLength: 256
                },
                type: {
                  name: 'String'
                }
              },
              api_version_description: {
                required: false,
                serialized_name: 'apiVersionDescription',
                constraints: {
                  MaxLength: 256
                },
                type: {
                  name: 'String'
                }
              },
              api_version_set_id: {
                required: false,
                serialized_name: 'apiVersionSetId',
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