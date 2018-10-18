# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::WebSearch::V1_0
  module Models
    #
    # Defines a news article.
    #
    class NewsArticle < Article

      include MsRestAzure


      def initialize
        @_type = "NewsArticle"
      end

      attr_accessor :_type


      #
      # Mapper for NewsArticle class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NewsArticle',
          type: {
            name: 'Composite',
            class_name: 'NewsArticle',
            model_properties: {
              _type: {
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              web_search_url: {
                required: false,
                read_only: true,
                serialized_name: 'webSearchUrl',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              url: {
                required: false,
                read_only: true,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              image: {
                required: false,
                read_only: true,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'ImageObject'
                }
              },
              description: {
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              bing_id: {
                required: false,
                read_only: true,
                serialized_name: 'bingId',
                type: {
                  name: 'String'
                }
              },
              thumbnail_url: {
                required: false,
                read_only: true,
                serialized_name: 'thumbnailUrl',
                type: {
                  name: 'String'
                }
              },
              provider: {
                required: false,
                read_only: true,
                serialized_name: 'provider',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
                      }
                  }
                }
              },
              text: {
                required: false,
                read_only: true,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              word_count: {
                required: false,
                read_only: true,
                serialized_name: 'wordCount',
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
