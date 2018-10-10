# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2017_10_01
  module Models
    #
    # The response of listUpgradeNotifications.
    #
    class NotificationListResponse

      include MsRestAzure

      # @return [Array<UpgradeNotification>] List of all notifications.
      attr_accessor :value

      # @return [String] Link for next set of notifications.
      attr_accessor :next_link


      #
      # Mapper for NotificationListResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NotificationListResponse',
          type: {
            name: 'Composite',
            class_name: 'NotificationListResponse',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'UpgradeNotificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UpgradeNotification'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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
