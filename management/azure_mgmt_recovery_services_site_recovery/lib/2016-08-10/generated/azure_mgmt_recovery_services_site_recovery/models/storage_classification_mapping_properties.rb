# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Storage mapping properties.
    #
    class StorageClassificationMappingProperties

      include MsRestAzure

      # @return [String] Target storage object Id.
      attr_accessor :target_storage_classification_id


      #
      # Mapper for StorageClassificationMappingProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageClassificationMappingProperties',
          type: {
            name: 'Composite',
            class_name: 'StorageClassificationMappingProperties',
            model_properties: {
              target_storage_classification_id: {
                required: false,
                serialized_name: 'targetStorageClassificationId',
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
