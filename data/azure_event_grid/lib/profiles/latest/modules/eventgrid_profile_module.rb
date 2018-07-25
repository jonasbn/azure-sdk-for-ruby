# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_event_grid'

module Azure::EventGrid::Profiles::Latest

  module Models
    ContainerRegistryEventSource = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventSource
    StorageBlobCreatedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
    ServiceBusActiveMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
    EventHubCaptureFileCreatedEventData = Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
    ContainerRegistryEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventData
    ResourceWriteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
    ResourceDeleteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
    DeviceTwinMetadata = Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
    ResourceDeleteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
    DeviceTwinProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
    ResourceActionFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceActionFailureData
    DeviceTwinInfoProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
    EventGridEvent = Azure::EventGrid::V2018_01_01::Models::EventGridEvent
    DeviceTwinInfoX509Thumbprint = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
    SubscriptionValidationResponse = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
    DeviceTwinInfo = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
    StorageBlobDeletedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
    DeviceLifeCycleEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
    ResourceWriteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
    DeviceConnectionStateEventInfo = Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventInfo
    ResourceActionSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceActionSuccessData
    DeviceConnectionStateEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventProperties
    SubscriptionValidationEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
    MediaJobStateChangeEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
    ResourceWriteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteSuccessData
    ServiceBusDeadletterMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
    ResourceActionCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceActionCancelData
    ContainerRegistryEventTarget = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventTarget
    ResourceDeleteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
    ContainerRegistryEventRequest = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
    SubscriptionDeletedEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
    ContainerRegistryEventActor = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventActor
    IotHubDeviceCreatedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceCreatedEventData
    IotHubDeviceDeletedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDeletedEventData
    IotHubDeviceConnectedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceConnectedEventData
    IotHubDeviceDisconnectedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDisconnectedEventData
    ContainerRegistryImagePushedEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImagePushedEventData
    ContainerRegistryImageDeletedEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImageDeletedEventData
    JobState = Azure::EventGrid::V2018_01_01::Models::JobState
  end

  #
  # EventGridDataClass
  #
  class EventGridDataClass
    attr_reader :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable = self
      @base_url = options[:base_url].nil? ? nil:options[:base_url]
      @options = options[:options].nil? ? nil:options[:options]

      @client_0 = Azure::EventGrid::V2018_01_01::EventGridClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/EventGrid'
      client.add_user_agent_information(profile_information)
    end

    def method_missing(method, *args)
      if @client_0.respond_to?method
        @client_0.send(method, *args)
      else
        super
      end
    end

  end

  class ModelClasses
    def container_registry_event_source
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventSource
    end
    def storage_blob_created_event_data
      Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
    end
    def service_bus_active_messages_available_with_no_listeners_event_data
      Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
    end
    def event_hub_capture_file_created_event_data
      Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
    end
    def container_registry_event_data
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventData
    end
    def resource_write_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
    end
    def resource_delete_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
    end
    def device_twin_metadata
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
    end
    def resource_delete_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
    end
    def device_twin_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
    end
    def resource_action_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionFailureData
    end
    def device_twin_info_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
    end
    def event_grid_event
      Azure::EventGrid::V2018_01_01::Models::EventGridEvent
    end
    def device_twin_info_x509_thumbprint
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
    end
    def subscription_validation_response
      Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
    end
    def device_twin_info
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
    end
    def storage_blob_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
    end
    def device_life_cycle_event_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
    end
    def resource_write_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
    end
    def device_connection_state_event_info
      Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventInfo
    end
    def resource_action_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionSuccessData
    end
    def device_connection_state_event_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventProperties
    end
    def subscription_validation_event_data
      Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
    end
    def media_job_state_change_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
    end
    def resource_write_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteSuccessData
    end
    def service_bus_deadletter_messages_available_with_no_listeners_event_data
      Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
    end
    def resource_action_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionCancelData
    end
    def container_registry_event_target
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventTarget
    end
    def resource_delete_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
    end
    def container_registry_event_request
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
    end
    def subscription_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
    end
    def container_registry_event_actor
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventActor
    end
    def iot_hub_device_created_event_data
      Azure::EventGrid::V2018_01_01::Models::IotHubDeviceCreatedEventData
    end
    def iot_hub_device_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDeletedEventData
    end
    def iot_hub_device_connected_event_data
      Azure::EventGrid::V2018_01_01::Models::IotHubDeviceConnectedEventData
    end
    def iot_hub_device_disconnected_event_data
      Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDisconnectedEventData
    end
    def container_registry_image_pushed_event_data
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImagePushedEventData
    end
    def container_registry_image_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImageDeletedEventData
    end
    def job_state
      Azure::EventGrid::V2018_01_01::Models::JobState
    end
  end
end
