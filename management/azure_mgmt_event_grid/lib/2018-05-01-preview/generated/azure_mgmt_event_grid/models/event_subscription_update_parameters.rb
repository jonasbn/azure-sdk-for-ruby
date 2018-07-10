# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_05_01_preview
  module Models
    #
    # Properties of the Event Subscription update
    #
    class EventSubscriptionUpdateParameters

      include MsRestAzure

      # @return [EventSubscriptionDestination] Information about the
      # destination where events have to be delivered for the event
      # subscription.
      attr_accessor :destination

      # @return [EventSubscriptionFilter] Information about the filter for the
      # event subscription.
      attr_accessor :filter

      # @return [Array<String>] List of user defined labels.
      attr_accessor :labels

      # @return [EventDeliverySchema] The event delivery schema for the event
      # subscription. Possible values include: 'EventGridSchema',
      # 'InputEventSchema', 'CloudEventV01Schema'
      attr_accessor :event_delivery_schema

      # @return [RetryPolicy] The retry policy for events. This can be used to
      # configure maximum number of delivery attempts and time to live for
      # events.
      attr_accessor :retry_policy

      # @return [DeadLetterDestination] The DeadLetter destination of the event
      # subscription.
      attr_accessor :dead_letter_destination


      #
      # Mapper for EventSubscriptionUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventSubscriptionUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'EventSubscriptionUpdateParameters',
            model_properties: {
              destination: {
                required: false,
                serialized_name: 'destination',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'endpointType',
                  uber_parent: 'EventSubscriptionDestination',
                  class_name: 'EventSubscriptionDestination'
                }
              },
              filter: {
                required: false,
                serialized_name: 'filter',
                type: {
                  name: 'Composite',
                  class_name: 'EventSubscriptionFilter'
                }
              },
              labels: {
                required: false,
                serialized_name: 'labels',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              event_delivery_schema: {
                required: false,
                serialized_name: 'eventDeliverySchema',
                type: {
                  name: 'String'
                }
              },
              retry_policy: {
                required: false,
                serialized_name: 'retryPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'RetryPolicy'
                }
              },
              dead_letter_destination: {
                required: false,
                serialized_name: 'deadLetterDestination',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'endpointType',
                  uber_parent: 'DeadLetterDestination',
                  class_name: 'DeadLetterDestination'
                }
              }
            }
          }
        }
      end
    end
  end
end
