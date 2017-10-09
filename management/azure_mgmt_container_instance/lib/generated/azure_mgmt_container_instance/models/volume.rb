# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerInstance
  module Models
    #
    # The properties of the volume.
    #
    class Volume

      include MsRestAzure

      # @return [String] The name of the volume.
      attr_accessor :name

      # @return [AzureFileVolume] The name of the Azure File volume.
      attr_accessor :azure_file


      #
      # Mapper for Volume class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Volume',
          type: {
            name: 'Composite',
            class_name: 'Volume',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              azure_file: {
                required: true,
                serialized_name: 'azureFile',
                type: {
                  name: 'Composite',
                  class_name: 'AzureFileVolume'
                }
              }
            }
          }
        }
      end
    end
  end
end
