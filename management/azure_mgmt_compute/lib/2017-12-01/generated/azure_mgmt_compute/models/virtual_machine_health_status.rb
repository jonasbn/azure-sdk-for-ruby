# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_12_01
  module Models
    #
    # The health status of the VM.
    #
    class VirtualMachineHealthStatus

      include MsRestAzure

      # @return [InstanceViewStatus] The health status information for the VM.
      attr_accessor :status


      #
      # Mapper for VirtualMachineHealthStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineHealthStatus',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineHealthStatus',
            model_properties: {
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Composite',
                  class_name: 'InstanceViewStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
