# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_10_01
  module Models
    #
    # An operation for Azure Container Instance service.
    #
    class Operation

      include MsRestAzure

      # @return [String] The name of the operation.
      attr_accessor :name

      # @return [OperationDisplay] The display information of the operation.
      attr_accessor :display

      # @return [ContainerInstanceOperationsOrigin] The intended executor of
      # the operation. Possible values include: 'User', 'System'
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
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                required: true,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'OperationDisplay'
                }
              },
              origin: {
                required: false,
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
