# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_01_01
  module Models
    #
    # Notification preference for a job stage.
    #
    class NotificationPreference

      include MsRestAzure

      # @return [NotificationStageName] Name of the stage. Possible values
      # include: 'DevicePrepared', 'Dispatched', 'Delivered', 'PickedUp',
      # 'AtAzureDC', 'DataCopy'
      attr_accessor :stage_name

      # @return [Boolean] Notification is required or not.
      attr_accessor :send_notification


      #
      # Mapper for NotificationPreference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NotificationPreference',
          type: {
            name: 'Composite',
            class_name: 'NotificationPreference',
            model_properties: {
              stage_name: {
                required: true,
                serialized_name: 'stageName',
                type: {
                  name: 'Enum',
                  module: 'NotificationStageName'
                }
              },
              send_notification: {
                required: true,
                serialized_name: 'sendNotification',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
