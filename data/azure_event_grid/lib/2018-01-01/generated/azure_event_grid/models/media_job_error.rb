# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Details of JobOutput errors.
    #
    class MediaJobError

      include MsRestAzure

      # @return [JobErrorCode] Error code describing the error. Possible values
      # include: 'ServiceError', 'ServiceTransientError',
      # 'DownloadNotAccessible', 'DownloadTransientError',
      # 'UploadNotAccessible', 'UploadTransientError',
      # 'ConfigurationUnsupported', 'ContentMalformed', 'ContentUnsupported'
      attr_accessor :code

      # @return [String] A human-readable language-dependent representation of
      # the error.
      attr_accessor :message

      # @return [JobErrorCategory] Helps with categorization of errors.
      # Possible values include: 'Service', 'Download', 'Upload',
      # 'Configuration', 'Content'
      attr_accessor :category

      # @return [JobRetry] Indicates that it may be possible to retry the Job.
      # If retry is unsuccessful, please contact Azure support via Azure
      # Portal. Possible values include: 'DoNotRetry', 'MayRetry'
      attr_accessor :retry_property

      # @return [Array<MediaJobErrorDetail>] An array of details about specific
      # errors that led to this reported error.
      attr_accessor :details


      #
      # Mapper for MediaJobError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MediaJobError',
          type: {
            name: 'Composite',
            class_name: 'MediaJobError',
            model_properties: {
              code: {
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'Enum',
                  module: 'JobErrorCode'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              category: {
                required: false,
                read_only: true,
                serialized_name: 'category',
                type: {
                  name: 'Enum',
                  module: 'JobErrorCategory'
                }
              },
              retry_property: {
                required: false,
                read_only: true,
                serialized_name: 'retry',
                type: {
                  name: 'Enum',
                  module: 'JobRetry'
                }
              },
              details: {
                required: false,
                read_only: true,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MediaJobErrorDetailElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MediaJobErrorDetail'
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
