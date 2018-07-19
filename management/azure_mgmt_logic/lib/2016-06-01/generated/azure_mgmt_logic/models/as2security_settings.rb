# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The AS2 agreement security settings.
    #
    class AS2SecuritySettings

      include MsRestAzure

      # @return [Boolean] The value indicating whether to send or request a
      # MDN.
      attr_accessor :override_group_signing_certificate

      # @return [String] The name of the signing certificate.
      attr_accessor :signing_certificate_name

      # @return [String] The name of the encryption certificate.
      attr_accessor :encryption_certificate_name

      # @return [Boolean] The value indicating whether to enable NRR for
      # inbound encoded messages.
      attr_accessor :enable_nrr_for_inbound_encoded_messages

      # @return [Boolean] The value indicating whether to enable NRR for
      # inbound decoded messages.
      attr_accessor :enable_nrr_for_inbound_decoded_messages

      # @return [Boolean] The value indicating whether to enable NRR for
      # outbound MDN.
      attr_accessor :enable_nrr_for_outbound_mdn

      # @return [Boolean] The value indicating whether to enable NRR for
      # outbound encoded messages.
      attr_accessor :enable_nrr_for_outbound_encoded_messages

      # @return [Boolean] The value indicating whether to enable NRR for
      # outbound decoded messages.
      attr_accessor :enable_nrr_for_outbound_decoded_messages

      # @return [Boolean] The value indicating whether to enable NRR for
      # inbound MDN.
      attr_accessor :enable_nrr_for_inbound_mdn

      # @return [String] The Sha2 algorithm format. Valid values are Sha2,
      # ShaHashSize, ShaHyphenHashSize, Sha2UnderscoreHashSize.
      attr_accessor :sha2algorithm_format


      #
      # Mapper for AS2SecuritySettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AS2SecuritySettings',
          type: {
            name: 'Composite',
            class_name: 'AS2SecuritySettings',
            model_properties: {
              override_group_signing_certificate: {
                required: true,
                serialized_name: 'overrideGroupSigningCertificate',
                type: {
                  name: 'Boolean'
                }
              },
              signing_certificate_name: {
                required: false,
                serialized_name: 'signingCertificateName',
                type: {
                  name: 'String'
                }
              },
              encryption_certificate_name: {
                required: false,
                serialized_name: 'encryptionCertificateName',
                type: {
                  name: 'String'
                }
              },
              enable_nrr_for_inbound_encoded_messages: {
                required: true,
                serialized_name: 'enableNrrForInboundEncodedMessages',
                type: {
                  name: 'Boolean'
                }
              },
              enable_nrr_for_inbound_decoded_messages: {
                required: true,
                serialized_name: 'enableNrrForInboundDecodedMessages',
                type: {
                  name: 'Boolean'
                }
              },
              enable_nrr_for_outbound_mdn: {
                required: true,
                serialized_name: 'enableNrrForOutboundMdn',
                type: {
                  name: 'Boolean'
                }
              },
              enable_nrr_for_outbound_encoded_messages: {
                required: true,
                serialized_name: 'enableNrrForOutboundEncodedMessages',
                type: {
                  name: 'Boolean'
                }
              },
              enable_nrr_for_outbound_decoded_messages: {
                required: true,
                serialized_name: 'enableNrrForOutboundDecodedMessages',
                type: {
                  name: 'Boolean'
                }
              },
              enable_nrr_for_inbound_mdn: {
                required: true,
                serialized_name: 'enableNrrForInboundMdn',
                type: {
                  name: 'Boolean'
                }
              },
              sha2algorithm_format: {
                required: false,
                serialized_name: 'sha2AlgorithmFormat',
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
