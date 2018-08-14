# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_10_01
  module Models
    #
    # Model object.
    #
    #
    class ImportSource

      include MsRestAzure

      # @return [String] The resource identifier of the source Azure Container
      # Registry.
      attr_accessor :resource_id

      # @return [String] The address of the source registry.
      attr_accessor :registry_uri

      # @return [String] Repository name of the source image.
      # Specify an image by repository ('hello-world'). This will use the
      # 'latest' tag.
      # Specify an image by tag ('hello-world:latest').
      # Specify an image by sha256-based manifest digest
      # ('hello-world@sha256:abc123').
      attr_accessor :source_image


      #
      # Mapper for ImportSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImportSource',
          type: {
            name: 'Composite',
            class_name: 'ImportSource',
            model_properties: {
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              registry_uri: {
                required: false,
                serialized_name: 'registryUri',
                type: {
                  name: 'String'
                }
              },
              source_image: {
                required: true,
                serialized_name: 'sourceImage',
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
