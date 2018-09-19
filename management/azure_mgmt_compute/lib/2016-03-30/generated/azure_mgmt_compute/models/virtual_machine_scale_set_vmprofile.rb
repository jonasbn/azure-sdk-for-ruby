# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # Describes a virtual machine scale set virtual machine profile.
    #
    class VirtualMachineScaleSetVMProfile

      include MsRestAzure

      # @return [VirtualMachineScaleSetOSProfile] The virtual machine scale set
      # OS profile.
      attr_accessor :os_profile

      # @return [VirtualMachineScaleSetStorageProfile] The virtual machine
      # scale set storage profile.
      attr_accessor :storage_profile

      # @return [VirtualMachineScaleSetNetworkProfile] The virtual machine
      # scale set network profile.
      attr_accessor :network_profile

      # @return [VirtualMachineScaleSetExtensionProfile] The virtual machine
      # scale set extension profile.
      attr_accessor :extension_profile


      #
      # Mapper for VirtualMachineScaleSetVMProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetVMProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetVMProfile',
            model_properties: {
              os_profile: {
                required: false,
                serialized_name: 'osProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetOSProfile'
                }
              },
              storage_profile: {
                required: false,
                serialized_name: 'storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetStorageProfile'
                }
              },
              network_profile: {
                required: false,
                serialized_name: 'networkProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetNetworkProfile'
                }
              },
              extension_profile: {
                required: false,
                serialized_name: 'extensionProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetExtensionProfile'
                }
              }
            }
          }
        }
      end
    end
  end
end
