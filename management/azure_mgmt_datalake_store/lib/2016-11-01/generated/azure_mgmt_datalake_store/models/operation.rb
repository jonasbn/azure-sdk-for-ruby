# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeStore::Mgmt::V2016_11_01
  module Models
    #
    # An available operation for Data Lake Store.
    #
    class Operation

      include MsRestAzure

      # @return [String] The name of the operation.
      attr_accessor :name

      # @return [OperationDisplay] The display information for the operation.
      attr_accessor :display

      # @return [OperationOrigin] The intended executor of the operation.
      # Possible values include: 'user', 'system', 'user,system'
      attr_accessor :origin


      #
      # Mapper for Operation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Operation',
          type: {
            name: 'Composite',
            class_name: 'Operation',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'OperationDisplay'
                }
              },
              origin: {
                required: false,
                read_only: true,
                serialized_name: 'origin',
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
