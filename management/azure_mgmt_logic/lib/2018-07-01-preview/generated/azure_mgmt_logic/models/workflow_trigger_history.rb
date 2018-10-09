# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The workflow trigger history.
    #
    class WorkflowTriggerHistory < SubResource

      include MsRestAzure

      # @return [DateTime] Gets the start time.
      attr_accessor :start_time

      # @return [DateTime] Gets the end time.
      attr_accessor :end_time

      # @return [WorkflowStatus] Gets the status. Possible values include:
      # 'NotSpecified', 'Paused', 'Running', 'Waiting', 'Succeeded', 'Skipped',
      # 'Suspended', 'Cancelled', 'Failed', 'Faulted', 'TimedOut', 'Aborted',
      # 'Ignored'
      attr_accessor :status

      # @return [String] Gets the code.
      attr_accessor :code

      # @return Gets the error.
      attr_accessor :error

      # @return [String] Gets the tracking id.
      attr_accessor :tracking_id

      # @return [Correlation] The run correlation.
      attr_accessor :correlation

      # @return [ContentLink] Gets the link to input parameters.
      attr_accessor :inputs_link

      # @return [ContentLink] Gets the link to output parameters.
      attr_accessor :outputs_link

      # @return [Boolean] Gets a value indicating whether trigger was fired.
      attr_accessor :fired

      # @return [ResourceReference] Gets the reference to workflow run.
      attr_accessor :run

      # @return [String] Gets the workflow trigger history name.
      attr_accessor :name

      # @return [String] Gets the workflow trigger history type.
      attr_accessor :type


      #
      # Mapper for WorkflowTriggerHistory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkflowTriggerHistory',
          type: {
            name: 'Composite',
            class_name: 'WorkflowTriggerHistory',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              code: {
                required: false,
                read_only: true,
                serialized_name: 'properties.code',
                type: {
                  name: 'String'
                }
              },
              error: {
                required: false,
                read_only: true,
                serialized_name: 'properties.error',
                type: {
                  name: 'Object'
                }
              },
              tracking_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.trackingId',
                type: {
                  name: 'String'
                }
              },
              correlation: {
                required: false,
                serialized_name: 'properties.correlation',
                type: {
                  name: 'Composite',
                  class_name: 'Correlation'
                }
              },
              inputs_link: {
                required: false,
                read_only: true,
                serialized_name: 'properties.inputsLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              },
              outputs_link: {
                required: false,
                read_only: true,
                serialized_name: 'properties.outputsLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              },
              fired: {
                required: false,
                read_only: true,
                serialized_name: 'properties.fired',
                type: {
                  name: 'Boolean'
                }
              },
              run: {
                required: false,
                read_only: true,
                serialized_name: 'properties.run',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceReference'
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
              }
            }
          }
        }
      end
    end
  end
end
