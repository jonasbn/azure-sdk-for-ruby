# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  module Models
    #
    # The access control record.
    #
    class AccessControlRecord < BaseModel

      include MsRestAzure

      # @return [String] The iSCSI initiator name (IQN).
      attr_accessor :initiator_name

      # @return [Integer] The number of volumes using the access control
      # record.
      attr_accessor :volume_count


      #
      # Mapper for AccessControlRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AccessControlRecord',
          type: {
            name: 'Composite',
            class_name: 'AccessControlRecord',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              initiator_name: {
                required: true,
                serialized_name: 'properties.initiatorName',
                type: {
                  name: 'String'
                }
              },
              volume_count: {
                required: false,
                read_only: true,
                serialized_name: 'properties.volumeCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
