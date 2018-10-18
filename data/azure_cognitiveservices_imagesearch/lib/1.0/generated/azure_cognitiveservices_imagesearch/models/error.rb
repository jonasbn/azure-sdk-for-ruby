# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ImageSearch::V1_0
  module Models
    #
    # Defines the error that occurred.
    #
    class Error

      include MsRestAzure

      # @return [ErrorCode] The error code that identifies the category of
      # error. Possible values include: 'None', 'ServerError',
      # 'InvalidRequest', 'RateLimitExceeded', 'InvalidAuthorization',
      # 'InsufficientAuthorization'. Default value: 'None' .
      attr_accessor :code

      # @return [ErrorSubCode] The error code that further helps to identify
      # the error. Possible values include: 'UnexpectedError', 'ResourceError',
      # 'NotImplemented', 'ParameterMissing', 'ParameterInvalidValue',
      # 'HttpNotAllowed', 'Blocked', 'AuthorizationMissing',
      # 'AuthorizationRedundancy', 'AuthorizationDisabled',
      # 'AuthorizationExpired'
      attr_accessor :sub_code

      # @return [String] A description of the error.
      attr_accessor :message

      # @return [String] A description that provides additional information
      # about the error.
      attr_accessor :more_details

      # @return [String] The parameter in the request that caused the error.
      attr_accessor :parameter

      # @return [String] The parameter's value in the request that was not
      # valid.
      attr_accessor :value


      #
      # Mapper for Error class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Error',
          type: {
            name: 'Composite',
            class_name: 'Error',
            model_properties: {
              code: {
                required: true,
                serialized_name: 'code',
                default_value: 'None',
                type: {
                  name: 'String'
                }
              },
              sub_code: {
                required: false,
                read_only: true,
                serialized_name: 'subCode',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              more_details: {
                required: false,
                read_only: true,
                serialized_name: 'moreDetails',
                type: {
                  name: 'String'
                }
              },
              parameter: {
                required: false,
                read_only: true,
                serialized_name: 'parameter',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                read_only: true,
                serialized_name: 'value',
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
