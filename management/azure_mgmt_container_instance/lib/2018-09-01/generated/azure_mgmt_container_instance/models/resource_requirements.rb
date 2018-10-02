# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_09_01
  module Models
    #
    # The resource requirements.
    #
    class ResourceRequirements

      include MsRestAzure

      # @return [ResourceRequests] The resource requests of this container
      # instance.
      attr_accessor :requests

      # @return [ResourceLimits] The resource limits of this container
      # instance.
      attr_accessor :limits


      #
      # Mapper for ResourceRequirements class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceRequirements',
          type: {
            name: 'Composite',
            class_name: 'ResourceRequirements',
            model_properties: {
              requests: {
                required: true,
                serialized_name: 'requests',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceRequests'
                }
              },
              limits: {
                required: false,
                serialized_name: 'limits',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceLimits'
                }
              }
            }
          }
        }
      end
    end
  end
end
