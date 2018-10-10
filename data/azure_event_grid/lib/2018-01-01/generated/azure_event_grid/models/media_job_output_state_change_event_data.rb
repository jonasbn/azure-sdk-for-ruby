# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for a
    # Microsoft.Media.JobOutputStateChange event.
    #
    class MediaJobOutputStateChangeEventData

      include MsRestAzure

      # @return [JobState] The previous state of the Job. Possible values
      # include: 'Canceled', 'Canceling', 'Error', 'Finished', 'Processing',
      # 'Queued', 'Scheduled'
      attr_accessor :previous_state

      # @return [MediaJobOutput] Gets the output.
      attr_accessor :output

      # @return [Hash{String => String}] Gets the Job correlation data.
      attr_accessor :job_correlation_data


      #
      # Mapper for MediaJobOutputStateChangeEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MediaJobOutputStateChangeEventData',
          type: {
            name: 'Composite',
            class_name: 'MediaJobOutputStateChangeEventData',
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
              output: {
                required: false,
                serialized_name: 'output',
                type: {
                  name: 'Composite',
                  class_name: 'MediaJobOutput'
                }
              },
              job_correlation_data: {
                required: false,
                serialized_name: 'jobCorrelationData',
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
              }
            }
          }
        }
      end
    end
  end
end
