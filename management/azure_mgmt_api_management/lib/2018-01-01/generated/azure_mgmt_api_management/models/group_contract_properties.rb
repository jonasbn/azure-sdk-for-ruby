# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Group contract Properties.
    #
    class GroupContractProperties

      include MsRestAzure

      # @return [String] Group name.
      attr_accessor :display_name

      # @return [String] Group description. Can contain HTML formatting tags.
      attr_accessor :description

      # @return [Boolean] true if the group is one of the three system groups
      # (Administrators, Developers, or Guests); otherwise false.
      attr_accessor :built_in

      # @return [GroupType] Group type. Possible values include: 'custom',
      # 'system', 'external'
      attr_accessor :type

      # @return [String] For external groups, this property contains the id of
      # the group from the external identity provider, e.g. for Azure Active
      # Directory aad://<tenant>.onmicrosoft.com/groups/<group object id>;
      # otherwise the value is null.
      attr_accessor :external_id


      #
      # Mapper for GroupContractProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GroupContractProperties',
          type: {
            name: 'Composite',
            class_name: 'GroupContractProperties',
            model_properties: {
              display_name: {
                required: true,
                serialized_name: 'displayName',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                constraints: {
                  MaxLength: 1000
                },
                type: {
                  name: 'String'
                }
              },
              built_in: {
                required: false,
                read_only: true,
                serialized_name: 'builtIn',
                type: {
                  name: 'Boolean'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'GroupType'
                }
              },
              external_id: {
                required: false,
                serialized_name: 'externalId',
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
