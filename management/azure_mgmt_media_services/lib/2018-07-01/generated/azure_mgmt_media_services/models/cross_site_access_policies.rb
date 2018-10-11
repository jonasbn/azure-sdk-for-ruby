# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # The client access policy.
    #
    class CrossSiteAccessPolicies

      include MsRestAzure

      # @return [String] The content of clientaccesspolicy.xml used by
      # Silverlight.
      attr_accessor :client_access_policy

      # @return [String] The content of crossdomain.xml used by Silverlight.
      attr_accessor :cross_domain_policy


      #
      # Mapper for CrossSiteAccessPolicies class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CrossSiteAccessPolicies',
          type: {
            name: 'Composite',
            class_name: 'CrossSiteAccessPolicies',
            model_properties: {
              client_access_policy: {
                required: false,
                serialized_name: 'clientAccessPolicy',
                type: {
                  name: 'String'
                }
              },
              cross_domain_policy: {
                required: false,
                serialized_name: 'crossDomainPolicy',
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