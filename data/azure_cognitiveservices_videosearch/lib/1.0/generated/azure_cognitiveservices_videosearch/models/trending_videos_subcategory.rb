# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::VideoSearch::V1_0
  module Models
    #
    # Model object.
    #
    #
    class TrendingVideosSubcategory

      include MsRestAzure

      # @return [String]
      attr_accessor :title

      # @return [Array<TrendingVideosTile>]
      attr_accessor :tiles


      #
      # Mapper for TrendingVideosSubcategory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TrendingVideos/Subcategory',
          type: {
            name: 'Composite',
            class_name: 'TrendingVideosSubcategory',
            model_properties: {
              title: {
                required: true,
                serialized_name: 'title',
                type: {
                  name: 'String'
                }
              },
              tiles: {
                required: true,
                serialized_name: 'tiles',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TrendingVideosTileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrendingVideosTile'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
