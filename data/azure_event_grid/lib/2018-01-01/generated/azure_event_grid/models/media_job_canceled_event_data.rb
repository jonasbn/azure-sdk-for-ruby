# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Job canceled event data
    #
    class MediaJobCanceledEventData < MediaJobStateChangeEventData

      include MsRestAzure

      # @return [Array<JobOutput>] Gets the Job outputs.
      attr_accessor :outputs


      #
      # Mapper for MediaJobCanceledEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: '#Microsoft.Media.JobCanceled',
          type: {
            name: 'Composite',
            class_name: 'MediaJobCanceledEventData',
            model_properties: {
              previous_state: {
                required: false,
                read_only: true,
                serialized_name: 'previousState',
                type: {
                  name: 'Enum',
                  module: 'JobState'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'JobState'
                }
              },
              correlation_data: {
                required: false,
                serialized_name: 'correlationData',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              outputs: {
                required: false,
                serialized_name: 'outputs',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'JobOutputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobOutput'
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
