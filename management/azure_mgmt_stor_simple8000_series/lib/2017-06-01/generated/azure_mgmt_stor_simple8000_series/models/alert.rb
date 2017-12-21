# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The alert.
    #
    class Alert < BaseModel

      include MsRestAzure

      # @return [String] The title of the alert
      attr_accessor :title

      # @return [AlertScope] The scope of the alert. Possible values include:
      # 'Resource', 'Device'
      attr_accessor :scope

      # @return [String] The type of the alert
      attr_accessor :alert_type

      # @return [DateTime] The UTC time at which the alert was raised
      attr_accessor :appeared_at_time

      # @return [DateTime] The source time at which the alert was raised
      attr_accessor :appeared_at_source_time

      # @return [DateTime] The UTC time at which the alert was cleared
      attr_accessor :cleared_at_time

      # @return [DateTime] The source time at which the alert was cleared
      attr_accessor :cleared_at_source_time

      # @return [AlertSource] The source at which the alert was raised
      attr_accessor :source

      # @return [String] The recommended action for the issue raised in the
      # alert
      attr_accessor :recommendation

      # @return [String] The reason for resolving the alert
      attr_accessor :resolution_reason

      # @return [AlertSeverity] The severity of the alert. Possible values
      # include: 'Informational', 'Warning', 'Critical'
      attr_accessor :severity

      # @return [AlertStatus] The current status of the alert. Possible values
      # include: 'Active', 'Cleared'
      attr_accessor :status

      # @return [AlertErrorDetails] The details of the error for which the
      # alert was raised
      attr_accessor :error_details

      # @return [Hash{String => String}] More details about the alert
      attr_accessor :detailed_information


      #
      # Mapper for Alert class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Alert',
          type: {
            name: 'Composite',
            class_name: 'Alert',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              title: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.title',
                type: {
                  name: 'String'
                }
              },
              scope: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.scope',
                type: {
                  name: 'Enum',
                  module: 'AlertScope'
                }
              },
              alert_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.alertType',
                type: {
                  name: 'String'
                }
              },
              appeared_at_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.appearedAtTime',
                type: {
                  name: 'DateTime'
                }
              },
              appeared_at_source_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.appearedAtSourceTime',
                type: {
                  name: 'DateTime'
                }
              },
              cleared_at_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clearedAtTime',
                type: {
                  name: 'DateTime'
                }
              },
              cleared_at_source_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clearedAtSourceTime',
                type: {
                  name: 'DateTime'
                }
              },
              source: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.source',
                type: {
                  name: 'Composite',
                  class_name: 'AlertSource'
                }
              },
              recommendation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recommendation',
                type: {
                  name: 'String'
                }
              },
              resolution_reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resolutionReason',
                type: {
                  name: 'String'
                }
              },
              severity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.severity',
                type: {
                  name: 'Enum',
                  module: 'AlertSeverity'
                }
              },
              status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'AlertStatus'
                }
              },
              error_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.errorDetails',
                type: {
                  name: 'Composite',
                  class_name: 'AlertErrorDetails'
                }
              },
              detailed_information: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.detailedInformation',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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