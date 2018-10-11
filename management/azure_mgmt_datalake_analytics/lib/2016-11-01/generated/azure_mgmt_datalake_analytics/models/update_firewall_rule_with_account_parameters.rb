# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2016_11_01
  module Models
    #
    # The parameters used to update a firewall rule while updating a Data Lake
    # Analytics account.
    #
    class UpdateFirewallRuleWithAccountParameters

      include MsRestAzure

      # @return [String] The unique name of the firewall rule to update.
      attr_accessor :name

      # @return [String] The start IP address for the firewall rule. This can
      # be either ipv4 or ipv6. Start and End should be in the same protocol.
      attr_accessor :start_ip_address

      # @return [String] The end IP address for the firewall rule. This can be
      # either ipv4 or ipv6. Start and End should be in the same protocol.
      attr_accessor :end_ip_address


      #
      # Mapper for UpdateFirewallRuleWithAccountParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateFirewallRuleWithAccountParameters',
          type: {
            name: 'Composite',
            class_name: 'UpdateFirewallRuleWithAccountParameters',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              start_ip_address: {
                required: false,
                serialized_name: 'properties.startIpAddress',
                type: {
                  name: 'String'
                }
              },
              end_ip_address: {
                required: false,
                serialized_name: 'properties.endIpAddress',
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
