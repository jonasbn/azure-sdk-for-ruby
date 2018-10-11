# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2016_11_01
  module Models
    #
    # The parameters used to update a Data Lake Store account while updating a
    # Data Lake Analytics account.
    #
    class UpdateDataLakeStoreWithAccountParameters

      include MsRestAzure

      # @return [String] The unique name of the Data Lake Store account to
      # update.
      attr_accessor :name

      # @return [String] The optional suffix for the Data Lake Store account.
      attr_accessor :suffix


      #
      # Mapper for UpdateDataLakeStoreWithAccountParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateDataLakeStoreWithAccountParameters',
          type: {
            name: 'Composite',
            class_name: 'UpdateDataLakeStoreWithAccountParameters',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              suffix: {
                required: false,
                serialized_name: 'properties.suffix',
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
