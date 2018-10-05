# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Certificate details.
    #
    class CertificateContract

      include MsRestAzure

      # @return [String] Certificate identifier path:
      # /certificates/{certificateId}
      attr_accessor :id

      # @return [String] Subject attribute of the certificate.
      attr_accessor :subject

      # @return [String] Thumbprint of the certificate.
      attr_accessor :thumbprint

      # @return [DateTime] Expiration date of the certificate. The date
      # conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified
      # by the ISO 8601 standard.
      #
      attr_accessor :expiration_date


      #
      # Mapper for CertificateContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CertificateContract',
          type: {
            name: 'Composite',
            class_name: 'CertificateContract',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              subject: {
                required: true,
                serialized_name: 'subject',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                required: true,
                serialized_name: 'thumbprint',
                type: {
                  name: 'String'
                }
              },
              expiration_date: {
                required: true,
                serialized_name: 'expirationDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
