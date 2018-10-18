# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ImageSearch::V1_0
  module Models
    #
    # Defines an image
    #
    class ImageObject < MediaObject

      include MsRestAzure


      def initialize
        @_type = "ImageObject"
      end

      attr_accessor :_type

      # @return [ImageObject] The URL to a thumbnail of the image
      attr_accessor :thumbnail

      # @return [String] The token that you use in a subsequent call to the
      # Image Search API to get additional information about the image. For
      # information about using this token, see the insightsToken query
      # parameter.
      attr_accessor :image_insights_token

      # @return [ImagesImageMetadata] A count of the number of websites where
      # you can shop or perform other actions related to the image. For
      # example, if the image is of an apple pie, this object includes a count
      # of the number of websites where you can buy an apple pie. To indicate
      # the number of offers in your UX, include badging such as a shopping
      # cart icon that contains the count. When the user clicks on the icon,
      # use imageInisghtsToken to get the list of websites.
      attr_accessor :insights_metadata

      # @return [String] Unique Id for the image
      attr_accessor :image_id

      # @return [String] A three-byte hexadecimal number that represents the
      # color that dominates the image. Use the color as the temporary
      # background in your client until the image is loaded.
      attr_accessor :accent_color

      # @return [String] Visual representation of the image. Used for getting
      # more sizes
      attr_accessor :visual_words


      #
      # Mapper for ImageObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageObject',
          type: {
            name: 'Composite',
            class_name: 'ImageObject',
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
              content_url: {
                required: false,
                read_only: true,
                serialized_name: 'contentUrl',
                type: {
                  name: 'String'
                }
              },
              host_page_url: {
                required: false,
                read_only: true,
                serialized_name: 'hostPageUrl',
                type: {
                  name: 'String'
                }
              },
              content_size: {
                required: false,
                read_only: true,
                serialized_name: 'contentSize',
                type: {
                  name: 'String'
                }
              },
              encoding_format: {
                required: false,
                read_only: true,
                serialized_name: 'encodingFormat',
                type: {
                  name: 'String'
                }
              },
              host_page_display_url: {
                required: false,
                read_only: true,
                serialized_name: 'hostPageDisplayUrl',
                type: {
                  name: 'String'
                }
              },
              width: {
                required: false,
                read_only: true,
                serialized_name: 'width',
                type: {
                  name: 'Number'
                }
              },
              height: {
                required: false,
                read_only: true,
                serialized_name: 'height',
                type: {
                  name: 'Number'
                }
              },
              thumbnail: {
                required: false,
                read_only: true,
                serialized_name: 'thumbnail',
                type: {
                  name: 'Composite',
                  class_name: 'ImageObject'
                }
              },
              image_insights_token: {
                required: false,
                read_only: true,
                serialized_name: 'imageInsightsToken',
                type: {
                  name: 'String'
                }
              },
              insights_metadata: {
                required: false,
                read_only: true,
                serialized_name: 'insightsMetadata',
                type: {
                  name: 'Composite',
                  class_name: 'ImagesImageMetadata'
                }
              },
              image_id: {
                required: false,
                read_only: true,
                serialized_name: 'imageId',
                type: {
                  name: 'String'
                }
              },
              accent_color: {
                required: false,
                read_only: true,
                serialized_name: 'accentColor',
                type: {
                  name: 'String'
                }
              },
              visual_words: {
                required: false,
                read_only: true,
                serialized_name: 'visualWords',
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
