# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::EntitySearch::V1_0
  module Models
    #
    # Model object.
    #
    #
    class ContractualRulesContractualRule

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ContractualRules/Attribution"] = "ContractualRulesAttribution"
      @@discriminatorMap["ContractualRules/LicenseAttribution"] = "ContractualRulesLicenseAttribution"
      @@discriminatorMap["ContractualRules/LinkAttribution"] = "ContractualRulesLinkAttribution"
      @@discriminatorMap["ContractualRules/MediaAttribution"] = "ContractualRulesMediaAttribution"
      @@discriminatorMap["ContractualRules/TextAttribution"] = "ContractualRulesTextAttribution"

      def initialize
        @_type = "ContractualRules/ContractualRule"
      end

      attr_accessor :_type

      # @return [String] The name of the field that the rule applies to.
      attr_accessor :target_property_name


      #
      # Mapper for ContractualRulesContractualRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContractualRules/ContractualRule',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '_type',
            uber_parent: 'ContractualRulesContractualRule',
            class_name: 'ContractualRulesContractualRule',
            model_properties: {
              target_property_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetPropertyName',
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
