# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2017_10_01
  module Models
    #
    # The parameters used to check the availabity of the storage account name.
    #
    class StorageAccountCheckNameAvailabilityParameters

      include MsRestAzure

      # @return [String] The storage account name.
      attr_accessor :name

      # @return [String] The type of resource,
      # Microsoft.Storage/storageAccounts. Default value:
      # 'Microsoft.Storage/storageAccounts' .
      attr_accessor :type


      #
      # Mapper for StorageAccountCheckNameAvailabilityParameters class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageAccountCheckNameAvailabilityParameters',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountCheckNameAvailabilityParameters',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Microsoft.Storage/storageAccounts',
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
