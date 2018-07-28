# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Email Template details.
    #
    class EmailTemplateContract < Resource

      include MsRestAzure

      # @return [String] Subject of the Template.
      attr_accessor :subject

      # @return [String] Email Template Body. This should be a valid XDocument
      attr_accessor :body

      # @return [String] Title of the Template.
      attr_accessor :title

      # @return [String] Description of the Email Template.
      attr_accessor :description

      # @return [Boolean] Whether the template is the default template provided
      # by Api Management or has been edited.
      attr_accessor :is_default

      # @return [Array<EmailTemplateParametersContractProperties>] Email
      # Template Parameter values.
      attr_accessor :parameters


      #
      # Mapper for EmailTemplateContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EmailTemplateContract',
          type: {
            name: 'Composite',
            class_name: 'EmailTemplateContract',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              subject: {
                required: true,
                serialized_name: 'properties.subject',
                constraints: {
                  MaxLength: 1000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              body: {
                required: true,
                serialized_name: 'properties.body',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              title: {
                required: false,
                serialized_name: 'properties.title',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              is_default: {
                required: false,
                read_only: true,
                serialized_name: 'properties.isDefault',
                type: {
                  name: 'Boolean'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EmailTemplateParametersContractPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EmailTemplateParametersContractProperties'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
