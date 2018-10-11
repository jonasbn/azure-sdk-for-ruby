# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_01_01
  module Models
    #
    # Shipping details.
    #
    class PackageShippingDetails

      include MsRestAzure

      # @return [String] Name of the carrier.
      attr_accessor :carrier_name

      # @return [String] Tracking Id of shipment.
      attr_accessor :tracking_id

      # @return [String] Url where shipment can be tracked.
      attr_accessor :tracking_url


      #
      # Mapper for PackageShippingDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PackageShippingDetails',
          type: {
            name: 'Composite',
            class_name: 'PackageShippingDetails',
            model_properties: {
              carrier_name: {
                required: false,
                read_only: true,
                serialized_name: 'carrierName',
                type: {
                  name: 'String'
                }
              },
              tracking_id: {
                required: false,
                read_only: true,
                serialized_name: 'trackingId',
                type: {
                  name: 'String'
                }
              },
              tracking_url: {
                required: false,
                read_only: true,
                serialized_name: 'trackingUrl',
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
