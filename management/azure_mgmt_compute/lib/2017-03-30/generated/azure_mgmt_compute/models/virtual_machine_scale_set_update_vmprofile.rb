# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_03_30
  module Models
    #
    # Describes a virtual machine scale set virtual machine profile.
    #
    class VirtualMachineScaleSetUpdateVMProfile

      include MsRestAzure

      # @return [VirtualMachineScaleSetUpdateOSProfile] The virtual machine
      # scale set OS profile.
      attr_accessor :os_profile

      # @return [VirtualMachineScaleSetUpdateStorageProfile] The virtual
      # machine scale set storage profile.
      attr_accessor :storage_profile

      # @return [VirtualMachineScaleSetUpdateNetworkProfile] The virtual
      # machine scale set network profile.
      attr_accessor :network_profile

      # @return [DiagnosticsProfile] The virtual machine scale set diagnostics
      # profile.
      attr_accessor :diagnostics_profile

      # @return [VirtualMachineScaleSetExtensionProfile] The virtual machine
      # scale set extension profile.
      attr_accessor :extension_profile

      # @return [String] The license type, which is for bring your own license
      # scenario.
      attr_accessor :license_type


      #
      # Mapper for VirtualMachineScaleSetUpdateVMProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetUpdateVMProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetUpdateVMProfile',
            model_properties: {
              os_profile: {
                required: false,
                serialized_name: 'osProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetUpdateOSProfile'
                }
              },
              storage_profile: {
                required: false,
                serialized_name: 'storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetUpdateStorageProfile'
                }
              },
              network_profile: {
                required: false,
                serialized_name: 'networkProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetUpdateNetworkProfile'
                }
              },
              diagnostics_profile: {
                required: false,
                serialized_name: 'diagnosticsProfile',
                type: {
                  name: 'Composite',
                  class_name: 'DiagnosticsProfile'
                }
              },
              extension_profile: {
                required: false,
                serialized_name: 'extensionProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetExtensionProfile'
                }
              },
              license_type: {
                required: false,
                serialized_name: 'licenseType',
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
