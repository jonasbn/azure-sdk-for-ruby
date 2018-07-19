# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Instructions for rendering the data
    #
    class Rendering

      include MsRestAzure

      # @return [RenderingType] Rendering Type. Possible values include:
      # 'NoGraph', 'Table', 'TimeSeries', 'TimeSeriesPerInstance'
      attr_accessor :rendering_type

      # @return [String] Title of data
      attr_accessor :title

      # @return [String] Description of the data that will help it be
      # interpreted
      attr_accessor :description


      #
      # Mapper for Rendering class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Rendering',
          type: {
            name: 'Composite',
            class_name: 'Rendering',
            model_properties: {
              rendering_type: {
                required: false,
                serialized_name: 'renderingType',
                type: {
                  name: 'Enum',
                  module: 'RenderingType'
                }
              },
              title: {
                required: false,
                serialized_name: 'title',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
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
