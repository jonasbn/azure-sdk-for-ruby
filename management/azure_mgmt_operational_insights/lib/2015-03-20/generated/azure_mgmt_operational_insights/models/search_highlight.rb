# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_03_20
  module Models
    #
    # Highlight details.
    #
    class SearchHighlight

      include MsRestAzure

      # @return [String] The string that is put before a matched result.
      attr_accessor :pre

      # @return [String] The string that is put after a matched result.
      attr_accessor :post


      #
      # Mapper for SearchHighlight class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SearchHighlight',
          type: {
            name: 'Composite',
            class_name: 'SearchHighlight',
            model_properties: {
              pre: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pre',
                type: {
                  name: 'String'
                }
              },
              post: {
                client_side_validation: true,
                required: false,
                serialized_name: 'post',
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
