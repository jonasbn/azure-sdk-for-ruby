# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::WebSearch::V1_0
  module Models
    #
    # Defines a news answer.
    #
    class News < SearchResultsAnswer

      include MsRestAzure


      def initialize
        @_type = "News"
      end

      attr_accessor :_type

      # @return [Array<NewsArticle>] An array of NewsArticle objects that
      # contain information about news articles that are relevant to the query.
      # If there are no results to return for the request, the array is empty.
      attr_accessor :value

      # @return [String]
      attr_accessor :location


      #
      # Mapper for News class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'News',
          type: {
            name: 'Composite',
            class_name: 'News',
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
              follow_up_queries: {
                required: false,
                read_only: true,
                serialized_name: 'followUpQueries',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'QueryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Query'
                      }
                  }
                }
              },
              query_context: {
                required: false,
                read_only: true,
                serialized_name: 'queryContext',
                type: {
                  name: 'Composite',
                  class_name: 'QueryContext'
                }
              },
              total_estimated_matches: {
                required: false,
                read_only: true,
                serialized_name: 'totalEstimatedMatches',
                type: {
                  name: 'Number'
                }
              },
              is_family_friendly: {
                required: false,
                read_only: true,
                serialized_name: 'isFamilyFriendly',
                type: {
                  name: 'Boolean'
                }
              },
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NewsArticleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NewsArticle'
                      }
                  }
                }
              },
              location: {
                required: false,
                read_only: true,
                serialized_name: 'location',
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
