# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Describes the settings to be used when encoding the input video into a
    # desired output bitrate layer with the H.264 video codec.
    #
    class H264Layer < VideoLayer

      include MsRestAzure


      def initialize
        @@odatatype = "#Microsoft.Media.H264Layer"
      end

      attr_accessor :@odatatype

      # @return [H264VideoProfile] Which profile of the H.264 standard should
      # be used when encoding this layer. Default is Auto. Possible values
      # include: 'Auto', 'Baseline', 'Main', 'High', 'High422', 'High444'
      attr_accessor :profile

      # @return [String] Which level of the H.264 standard should be used when
      # encoding this layer. The value can be Auto, or a number that matches
      # the H.264 profile. If not specified, the default is Auto, which lets
      # the encoder choose the Level that is appropriate for this layer.
      attr_accessor :level

      # @return [Duration] The VBV buffer window length. The value should be in
      # ISO 8601 format. The value should be in the range [0.1-100] seconds.
      # The default is 5 seconds (for example, PT5S).
      attr_accessor :buffer_window

      # @return [Integer] The number of reference frames to be used when
      # encoding this layer. If not specified, the encoder determines an
      # appropriate number based on the encoder complexity setting.
      attr_accessor :reference_frames

      # @return [EntropyMode] The entropy mode to be used for this layer. If
      # not specified, the encoder chooses the mode that is appropriate for the
      # profile and level. Possible values include: 'Cabac', 'Cavlc'
      attr_accessor :entropy_mode


      #
      # Mapper for H264Layer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: '#Microsoft.Media.H264Layer',
          type: {
            name: 'Composite',
            class_name: 'H264Layer',
            model_properties: {
              width: {
                required: false,
                serialized_name: 'width',
                type: {
                  name: 'String'
                }
              },
              height: {
                required: false,
                serialized_name: 'height',
                type: {
                  name: 'String'
                }
              },
              label: {
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              @odatatype: {
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              bitrate: {
                required: false,
                serialized_name: 'bitrate',
                type: {
                  name: 'Number'
                }
              },
              max_bitrate: {
                required: false,
                serialized_name: 'maxBitrate',
                type: {
                  name: 'Number'
                }
              },
              b_frames: {
                required: false,
                serialized_name: 'bFrames',
                type: {
                  name: 'Number'
                }
              },
              frame_rate: {
                required: false,
                serialized_name: 'frameRate',
                type: {
                  name: 'String'
                }
              },
              slices: {
                required: false,
                serialized_name: 'slices',
                type: {
                  name: 'Number'
                }
              },
              adaptive_bframe: {
                required: false,
                serialized_name: 'adaptiveBFrame',
                type: {
                  name: 'Boolean'
                }
              },
              profile: {
                required: false,
                serialized_name: 'profile',
                type: {
                  name: 'Enum',
                  module: 'H264VideoProfile'
                }
              },
              level: {
                required: false,
                serialized_name: 'level',
                type: {
                  name: 'String'
                }
              },
              buffer_window: {
                required: false,
                serialized_name: 'bufferWindow',
                type: {
                  name: 'TimeSpan'
                }
              },
              reference_frames: {
                required: false,
                serialized_name: 'referenceFrames',
                type: {
                  name: 'Number'
                }
              },
              entropy_mode: {
                required: false,
                serialized_name: 'entropyMode',
                type: {
                  name: 'Enum',
                  module: 'EntropyMode'
                }
              }
            }
          }
        }
      end
    end
  end
end
