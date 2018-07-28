# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Api Version set base parameters
    #
    class ApiVersionSetEntityBase

      include MsRestAzure

      # @return [String] Description of API Version Set.
      attr_accessor :description

      # @return [String] Name of query parameter that indicates the API Version
      # if versioningScheme is set to `query`.
      attr_accessor :version_query_name

      # @return [String] Name of HTTP header parameter that indicates the API
      # Version if versioningScheme is set to `header`.
      attr_accessor :version_header_name


      #
      # Mapper for ApiVersionSetEntityBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiVersionSetEntityBase',
          type: {
            name: 'Composite',
            class_name: 'ApiVersionSetEntityBase',
            model_properties: {
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              version_query_name: {
                required: false,
                serialized_name: 'versionQueryName',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              version_header_name: {
                required: false,
                serialized_name: 'versionHeaderName',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
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
