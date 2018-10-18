# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ImageSearch::V1_0
  module Models
    #
    # Defines a cooking recipe.
    #
    class Recipe < CreativeWork

      include MsRestAzure


      def initialize
        @_type = "Recipe"
      end

      attr_accessor :_type

      # @return [String] The amount of time the food takes to cook. For
      # example, PT25M. For information about the time format, see
      # http://en.wikipedia.org/wiki/ISO_8601#Durations.
      attr_accessor :cook_time

      # @return [String] The amount of time required to prepare the
      # ingredients. For example, PT15M. For information about the time format,
      # see http://en.wikipedia.org/wiki/ISO_8601#Durations.
      attr_accessor :prep_time

      # @return [String] The total amount of time it takes to prepare and cook
      # the recipe. For example, PT45M. For information about the time format,
      # see http://en.wikipedia.org/wiki/ISO_8601#Durations.
      attr_accessor :total_time


      #
      # Mapper for Recipe class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Recipe',
          type: {
            name: 'Composite',
            class_name: 'Recipe',
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
              read_link: {
                required: false,
                read_only: true,
                serialized_name: 'readLink',
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
              alternate_name: {
                required: false,
                read_only: true,
                serialized_name: 'alternateName',
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
              date_published: {
                required: false,
                read_only: true,
                serialized_name: 'datePublished',
                type: {
                  name: 'String'
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
              cook_time: {
                required: false,
                read_only: true,
                serialized_name: 'cookTime',
                type: {
                  name: 'String'
                }
              },
              prep_time: {
                required: false,
                read_only: true,
                serialized_name: 'prepTime',
                type: {
                  name: 'String'
                }
              },
              total_time: {
                required: false,
                read_only: true,
                serialized_name: 'totalTime',
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
