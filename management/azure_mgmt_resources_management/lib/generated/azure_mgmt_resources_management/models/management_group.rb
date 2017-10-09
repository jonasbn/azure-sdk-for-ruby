# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ResourcesManagement
  module Models
    #
    # The management group details.
    #
    class ManagementGroup

      include MsRestAzure

      # @return [String] The ID of the management group. E.g.
      # /providers/Microsoft.Management/managementGroups/20000000-0000-0000-0000-000000000000
      attr_accessor :id

      # @return [String] The type of the resource. E.g.
      # /providers/Microsoft.Management/managementGroups
      attr_accessor :type

      # @return The name of the management group. E.g.
      # 20000000-0000-0000-0000-000000000000
      attr_accessor :name

      # @return The AAD Tenant ID associated with the management group. E.g.
      # 10000000-0000-0000-0000-000000000000
      attr_accessor :tenant_id

      # @return [String] The friendly name of the management group.
      attr_accessor :display_name

      # @return [ManagementGroupDetailsProperties] Details.
      attr_accessor :details


      #
      # Mapper for ManagementGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ManagementGroup',
          type: {
            name: 'Composite',
            class_name: 'ManagementGroup',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              details: {
                required: false,
                serialized_name: 'properties.details',
                type: {
                  name: 'Composite',
                  class_name: 'ManagementGroupDetailsProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
