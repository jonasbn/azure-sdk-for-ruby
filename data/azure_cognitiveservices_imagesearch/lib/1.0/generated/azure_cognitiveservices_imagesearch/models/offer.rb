# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ImageSearch::V1_0
  module Models
    #
    # Defines a merchant's offer.
    #
    class Offer < Thing

      include MsRestAzure


      def initialize
        @_type = "Offer"
      end

      attr_accessor :_type

      # @return [Organization] Seller for this offer
      attr_accessor :seller

      # @return [Float] The item's price.
      attr_accessor :price

      # @return [Currency] The monetary currency. For example, USD. Possible
      # values include: 'USD', 'CAD', 'GBP', 'EUR', 'COP', 'JPY', 'CNY', 'AUD',
      # 'INR', 'AED', 'AFN', 'ALL', 'AMD', 'ANG', 'AOA', 'ARS', 'AWG', 'AZN',
      # 'BAM', 'BBD', 'BDT', 'BGN', 'BHD', 'BIF', 'BMD', 'BND', 'BOB', 'BOV',
      # 'BRL', 'BSD', 'BTN', 'BWP', 'BYR', 'BZD', 'CDF', 'CHE', 'CHF', 'CHW',
      # 'CLF', 'CLP', 'COU', 'CRC', 'CUC', 'CUP', 'CVE', 'CZK', 'DJF', 'DKK',
      # 'DOP', 'DZD', 'EGP', 'ERN', 'ETB', 'FJD', 'FKP', 'GEL', 'GHS', 'GIP',
      # 'GMD', 'GNF', 'GTQ', 'GYD', 'HKD', 'HNL', 'HRK', 'HTG', 'HUF', 'IDR',
      # 'ILS', 'IQD', 'IRR', 'ISK', 'JMD', 'JOD', 'KES', 'KGS', 'KHR', 'KMF',
      # 'KPW', 'KRW', 'KWD', 'KYD', 'KZT', 'LAK', 'LBP', 'LKR', 'LRD', 'LSL',
      # 'LYD', 'MAD', 'MDL', 'MGA', 'MKD', 'MMK', 'MNT', 'MOP', 'MRO', 'MUR',
      # 'MVR', 'MWK', 'MXN', 'MXV', 'MYR', 'MZN', 'NAD', 'NGN', 'NIO', 'NOK',
      # 'NPR', 'NZD', 'OMR', 'PAB', 'PEN', 'PGK', 'PHP', 'PKR', 'PLN', 'PYG',
      # 'QAR', 'RON', 'RSD', 'RUB', 'RWF', 'SAR', 'SBD', 'SCR', 'SDG', 'SEK',
      # 'SGD', 'SHP', 'SLL', 'SOS', 'SRD', 'SSP', 'STD', 'SYP', 'SZL', 'THB',
      # 'TJS', 'TMT', 'TND', 'TOP', 'TRY', 'TTD', 'TWD', 'TZS', 'UAH', 'UGX',
      # 'UYU', 'UZS', 'VEF', 'VND', 'VUV', 'WST', 'XAF', 'XCD', 'XOF', 'XPF',
      # 'YER', 'ZAR', 'ZMW'. Default value: 'USD' .
      attr_accessor :price_currency

      # @return [ItemAvailability] The item's availability. The following are
      # the possible values: Discontinued, InStock, InStoreOnly,
      # LimitedAvailability, OnlineOnly, OutOfStock, PreOrder, SoldOut.
      # Possible values include: 'Discontinued', 'InStock', 'InStoreOnly',
      # 'LimitedAvailability', 'OnlineOnly', 'OutOfStock', 'PreOrder',
      # 'SoldOut'
      attr_accessor :availability

      # @return [AggregateRating] An aggregated rating that indicates how well
      # the product has been rated by others.
      attr_accessor :aggregate_rating

      # @return [String] The last date that the offer was updated. The date is
      # in the form YYYY-MM-DD.
      attr_accessor :last_updated


      #
      # Mapper for Offer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Offer',
          type: {
            name: 'Composite',
            class_name: 'Offer',
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
              seller: {
                required: false,
                read_only: true,
                serialized_name: 'seller',
                type: {
                  name: 'Composite',
                  class_name: 'Organization'
                }
              },
              price: {
                required: false,
                read_only: true,
                serialized_name: 'price',
                type: {
                  name: 'Double'
                }
              },
              price_currency: {
                required: false,
                read_only: true,
                serialized_name: 'priceCurrency',
                default_value: 'USD',
                type: {
                  name: 'String'
                }
              },
              availability: {
                required: false,
                read_only: true,
                serialized_name: 'availability',
                type: {
                  name: 'String'
                }
              },
              aggregate_rating: {
                required: false,
                read_only: true,
                serialized_name: 'aggregateRating',
                type: {
                  name: 'Composite',
                  class_name: 'AggregateRating'
                }
              },
              last_updated: {
                required: false,
                read_only: true,
                serialized_name: 'lastUpdated',
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
