# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Api Entity Properties
    #
    class ApiContractProperties < ApiEntityBaseContract

      include MsRestAzure

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
      # Mapper for ApiContractProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiContractProperties',
          type: {
            name: 'Composite',
            class_name: 'ApiContractProperties',
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
              api_version_set_id: {
                required: false,
                serialized_name: 'apiVersionSetId',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
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
                serialized_name: 'serviceUrl',
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
                serialized_name: 'path',
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
                serialized_name: 'protocols',
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
                serialized_name: 'apiVersionSet',
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
