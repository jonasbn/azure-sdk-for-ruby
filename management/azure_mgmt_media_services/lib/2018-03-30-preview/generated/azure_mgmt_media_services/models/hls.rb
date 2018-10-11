# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # The HLS configuration.
    #
    class Hls

      include MsRestAzure

      # @return [Integer] The amount of fragments per HTTP Live Streaming (HLS)
      # segment.
      attr_accessor :fragments_per_ts_segment


      #
      # Mapper for Hls class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Hls',
          type: {
            name: 'Composite',
            class_name: 'Hls',
            model_properties: {
              fragments_per_ts_segment: {
                required: false,
                serialized_name: 'fragmentsPerTsSegment',
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
