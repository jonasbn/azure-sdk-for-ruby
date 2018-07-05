# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Dns::Mgmt::V2016_04_01
  module Models
    #
    # An SOA record.
    #
    class SoaRecord

      include MsRestAzure

      # @return [String] The domain name of the authoritative name server for
      # this SOA record.
      attr_accessor :host

      # @return [String] The email contact for this SOA record.
      attr_accessor :email

      # @return [Integer] The serial number for this SOA record.
      attr_accessor :serial_number

      # @return [Integer] The refresh value for this SOA record.
      attr_accessor :refresh_time

      # @return [Integer] The retry time for this SOA record.
      attr_accessor :retry_time

      # @return [Integer] The expire time for this SOA record.
      attr_accessor :expire_time

      # @return [Integer] The minimum value for this SOA record. By convention
      # this is used to determine the negative caching duration.
      attr_accessor :minimum_ttl


      #
      # Mapper for SoaRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SoaRecord',
          type: {
            name: 'Composite',
            class_name: 'SoaRecord',
            model_properties: {
              host: {
                required: false,
                serialized_name: 'host',
                type: {
                  name: 'String'
                }
              },
              email: {
                required: false,
                serialized_name: 'email',
                type: {
                  name: 'String'
                }
              },
              serial_number: {
                required: false,
                serialized_name: 'serialNumber',
                type: {
                  name: 'Number'
                }
              },
              refresh_time: {
                required: false,
                serialized_name: 'refreshTime',
                type: {
                  name: 'Number'
                }
              },
              retry_time: {
                required: false,
                serialized_name: 'retryTime',
                type: {
                  name: 'Number'
                }
              },
              expire_time: {
                required: false,
                serialized_name: 'expireTime',
                type: {
                  name: 'Number'
                }
              },
              minimum_ttl: {
                required: false,
                serialized_name: 'minimumTTL',
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
