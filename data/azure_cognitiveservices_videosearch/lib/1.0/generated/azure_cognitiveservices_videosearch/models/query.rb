# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::VideoSearch::V1_0
  module Models
    #
    # Defines a search query.
    #
    class Query

      include MsRestAzure

      # @return [String] The query string. Use this string as the query term in
      # a new search request.
      attr_accessor :text

      # @return [String] The display version of the query term. This version of
      # the query term may contain special characters that highlight the search
      # term found in the query string. The string contains the highlighting
      # characters only if the query enabled hit highlighting
      attr_accessor :display_text

      # @return [String] The URL that takes the user to the Bing search results
      # page for the query.Only related search results include this field.
      attr_accessor :web_search_url

      # @return [String]
      attr_accessor :search_link

      # @return [ImageObject]
      attr_accessor :thumbnail


      #
      # Mapper for Query class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Query',
          type: {
            name: 'Composite',
            class_name: 'Query',
            model_properties: {
              text: {
                required: true,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              display_text: {
                required: false,
                read_only: true,
                serialized_name: 'displayText',
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
              search_link: {
                required: false,
                read_only: true,
                serialized_name: 'searchLink',
                type: {
                  name: 'String'
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
              }
            }
          }
        }
      end
    end
  end
end
