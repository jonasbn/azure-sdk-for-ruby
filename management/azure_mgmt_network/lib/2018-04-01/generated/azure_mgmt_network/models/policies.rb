# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_04_01
  module Models
    #
    # Policies for vpn gateway.
    #
    class Policies

      include MsRestAzure

      # @return [Boolean] True if branch to branch traffic is allowed.
      attr_accessor :allow_branch_to_branch_traffic

      # @return [Boolean] True if Vnet to Vnet traffic is allowed.
      attr_accessor :allow_vnet_to_vnet_traffic


      #
      # Mapper for Policies class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Policies',
          type: {
            name: 'Composite',
            class_name: 'Policies',
            model_properties: {
              allow_branch_to_branch_traffic: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowBranchToBranchTraffic',
                type: {
                  name: 'Boolean'
                }
              },
              allow_vnet_to_vnet_traffic: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowVnetToVnetTraffic',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
