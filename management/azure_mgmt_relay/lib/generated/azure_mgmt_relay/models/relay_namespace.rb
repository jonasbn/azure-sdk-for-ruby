# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Relay
  module Models
    #
    # Description of a namespace resource.
    #
    class RelayNamespace < TrackedResource

      include MsRestAzure

      # @return [Sku] SKU of the namespace.
      attr_accessor :sku

      # @return [ProvisioningStateEnum] Possible values include: 'Created',
      # 'Succeeded', 'Deleted', 'Failed', 'Updating', 'Unknown'
      attr_accessor :provisioning_state

      # @return [DateTime] The time the namespace was created.
      attr_accessor :created_at

      # @return [DateTime] The time the namespace was updated.
      attr_accessor :updated_at

      # @return [String] Endpoint you can use to perform Service Bus
      # operations.
      attr_accessor :service_bus_endpoint

      # @return [String] Identifier for Azure Insights metrics.
      attr_accessor :metric_id


      #
      # Mapper for RelayNamespace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RelayNamespace',
          type: {
            name: 'Composite',
            class_name: 'RelayNamespace',
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
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningStateEnum'
                }
              },
              created_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              updated_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              service_bus_endpoint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceBusEndpoint',
                type: {
                  name: 'String'
                }
              },
              metric_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.metricId',
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
