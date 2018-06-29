# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AnalysisServices::Mgmt::V2017_08_01_beta
  module Models
    #
    # An array of Analysis Services resources.
    #
    class AnalysisServicesServers

      include MsRestAzure

      # @return [Array<AnalysisServicesServer>] An array of Analysis Services
      # resources.
      attr_accessor :value


      #
      # Mapper for AnalysisServicesServers class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AnalysisServicesServers',
          type: {
            name: 'Composite',
            class_name: 'AnalysisServicesServers',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AnalysisServicesServerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AnalysisServicesServer'
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
