# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # API details.
    #
    class ApiContract < Resource

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

      # @return [String] A resource identifier for the related ApiVersionSet.
      attr_accessor :api_version_set_id

      # @return [String] API name.
      attr_accessor :display_name

      # @return [String] Absolute URL of the backend service implementing this
      # API.
      attr_accessor :service_url

      # @return [String] Relative URL uniquely identifying this API and all of
      # its resource paths within the API Management service instance. It is
      # appended to the API endpoint base URL specified during the service
      # instance creation to form a public URL for this API.
      attr_accessor :path

      # @return [Array<Protocol>] Describes on which protocols the operations
      # in this API can be invoked.
      attr_accessor :protocols

      # @return [ApiVersionSetContractDetails]
      attr_accessor :api_version_set


      #
      # Mapper for ApiContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiContract',
          type: {
            name: 'Composite',
            class_name: 'ApiContract',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              },
              authentication_settings: {
                required: false,
                serialized_name: 'properties.authenticationSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AuthenticationSettingsContract'
                }
              },
              subscription_key_parameter_names: {
                required: false,
                serialized_name: 'properties.subscriptionKeyParameterNames',
                type: {
                  name: 'Composite',
                  class_name: 'SubscriptionKeyParameterNamesContract'
                }
              },
              api_type: {
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'String'
                }
              },
              api_revision: {
                required: false,
                serialized_name: 'properties.apiRevision',
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
                serialized_name: 'properties.apiVersion',
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
                serialized_name: 'properties.isCurrent',
                type: {
                  name: 'Boolean'
                }
              },
              is_online: {
                required: false,
                read_only: true,
                serialized_name: 'properties.isOnline',
                type: {
                  name: 'Boolean'
                }
              },
              api_version_set_id: {
                required: false,
                serialized_name: 'properties.apiVersionSetId',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              service_url: {
                required: false,
                serialized_name: 'properties.serviceUrl',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 0
                },
                type: {
                  name: 'String'
                }
              },
              path: {
                required: true,
                serialized_name: 'properties.path',
                constraints: {
                  MaxLength: 400,
                  MinLength: 0
                },
                type: {
                  name: 'String'
                }
              },
              protocols: {
                required: false,
                serialized_name: 'properties.protocols',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ProtocolElementType',
                      type: {
                        name: 'Enum',
                        module: 'Protocol'
                      }
                  }
                }
              },
              api_version_set: {
                required: false,
                serialized_name: 'properties.apiVersionSet',
                type: {
                  name: 'Composite',
                  class_name: 'ApiVersionSetContractDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
