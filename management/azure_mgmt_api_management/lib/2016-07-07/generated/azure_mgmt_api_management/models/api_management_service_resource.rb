# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Description of an API Management service resource.
    #
    class ApiManagementServiceResource < ApiManagementServiceBaseParameters

      include MsRestAzure

      # @return [String] The ID of the created API Management service.
      attr_accessor :id

      # @return [String] Datacenter location of the API Management service.
      attr_accessor :location

      # @return [String] Name of the API Management service.
      attr_accessor :name

      # @return [String] Resource type of the API Management service.
      attr_accessor :type

      # @return [String] ETag of the resource.
      attr_accessor :etag


      #
      # Mapper for ApiManagementServiceResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiManagementServiceResource',
          type: {
            name: 'Composite',
            class_name: 'ApiManagementServiceResource',
            model_properties: {
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              publisher_email: {
                required: true,
                serialized_name: 'properties.publisherEmail',
                constraints: {
                  MaxLength: 100
                },
                type: {
                  name: 'String'
                }
              },
              publisher_name: {
                required: true,
                serialized_name: 'properties.publisherName',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              target_provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.targetProvisioningState',
                type: {
                  name: 'String'
                }
              },
              created_at_utc: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAtUtc',
                type: {
                  name: 'DateTime'
                }
              },
              runtime_url: {
                required: false,
                read_only: true,
                serialized_name: 'properties.runtimeUrl',
                type: {
                  name: 'String'
                }
              },
              portal_url: {
                required: false,
                read_only: true,
                serialized_name: 'properties.portalUrl',
                type: {
                  name: 'String'
                }
              },
              management_api_url: {
                required: false,
                read_only: true,
                serialized_name: 'properties.managementApiUrl',
                type: {
                  name: 'String'
                }
              },
              scm_url: {
                required: false,
                read_only: true,
                serialized_name: 'properties.scmUrl',
                type: {
                  name: 'String'
                }
              },
              addresser_email: {
                required: false,
                serialized_name: 'properties.addresserEmail',
                type: {
                  name: 'String'
                }
              },
              hostname_configurations: {
                required: false,
                serialized_name: 'properties.hostnameConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HostnameConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HostnameConfiguration'
                      }
                  }
                }
              },
              static_ips: {
                required: false,
                read_only: true,
                serialized_name: 'properties.staticIPs',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              vpnconfiguration: {
                required: false,
                serialized_name: 'properties.vpnconfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkConfiguration'
                }
              },
              additional_locations: {
                required: false,
                serialized_name: 'properties.additionalLocations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AdditionalRegionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AdditionalRegion'
                      }
                  }
                }
              },
              custom_properties: {
                required: false,
                serialized_name: 'properties.customProperties',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              vpn_type: {
                required: false,
                serialized_name: 'properties.vpnType',
                default_value: 'None',
                type: {
                  name: 'Enum',
                  module: 'VirtualNetworkType'
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'ApiManagementServiceSkuProperties'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
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
              etag: {
                required: false,
                serialized_name: 'etag',
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
