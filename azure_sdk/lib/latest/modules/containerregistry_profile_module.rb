# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_registry'

module Azure::Profiles::Latest
  module ContainerRegistry
    module Mgmt
      Operations = Azure::ContainerRegistry::Mgmt::V2017_10_01::Operations
      Registries = Azure::ContainerRegistry::Mgmt::V2017_10_01::Registries
      Replications = Azure::ContainerRegistry::Mgmt::V2017_10_01::Replications
      Webhooks = Azure::ContainerRegistry::Mgmt::V2017_10_01::Webhooks

      module Models
        EventResponseMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventResponseMessage
        Registry = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Registry
        Replication = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Replication
        RegistryUsage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
        Actor = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
        OperationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDefinition
        Request = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
        PasswordName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PasswordName
        RegistryUsageUnit = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageUnit
        Source = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
        TrustPolicyType = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicyType
        Event = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Event
        PolicyStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PolicyStatus
        ImportMode = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportMode
        WebhookStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookStatus
        WebhookAction = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookAction
        OperationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
        Webhook = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Webhook
        Sku = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
        Resource = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Resource
        SkuName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuName
        SkuTier = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuTier
        ProvisioningState = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ProvisioningState
        QuarantinePolicy = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::QuarantinePolicy
        ImportSourceCredentials = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSourceCredentials
        TrustPolicy = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicy
        ImportImageParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportImageParameters
        RegistryPolicies = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPolicies
        RegistryNameStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameStatus
        RegistryNameCheckRequest = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
        OperationDisplayDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDisplayDefinition
        OperationServiceSpecificationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationServiceSpecificationDefinition
        ReplicationUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationUpdateParameters
        RegistryIdentity = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryIdentity
        Status = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
        ReplicationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationListResult
        StorageAccountProperties = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
        RegistryUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
        WebhookCreateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
        RegistryPassword = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPassword
        RegenerateCredentialParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegenerateCredentialParameters
        WebhookUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
        EventInfo = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventInfo
        WebhookListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
        CallbackConfig = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::CallbackConfig
        OperationMetricSpecificationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationMetricSpecificationDefinition
        RegistryUsageListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
        Target = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
        EventListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
        RegistryListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
        RegistryListCredentialsResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListCredentialsResult
        EventContent = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
        EventRequestMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventRequestMessage
        ImportSource = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSource
      end

      class ContainerRegistryManagementClass
        attr_reader :operations, :registries, :replications, :webhooks, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ContainerRegistry::Mgmt::V2017_10_01::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @registries = @client_0.registries
          @replications = @client_0.replications
          @webhooks = @client_0.webhooks

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ContainerRegistry/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def event_response_message
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventResponseMessage
          end
          def registry
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Registry
          end
          def replication
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Replication
          end
          def registry_usage
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
          end
          def actor
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
          end
          def operation_definition
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDefinition
          end
          def request
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
          end
          def password_name
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PasswordName
          end
          def registry_usage_unit
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageUnit
          end
          def source
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
          end
          def trust_policy_type
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicyType
          end
          def event
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Event
          end
          def policy_status
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PolicyStatus
          end
          def import_mode
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportMode
          end
          def webhook_status
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookStatus
          end
          def webhook_action
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookAction
          end
          def operation_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
          end
          def webhook
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Webhook
          end
          def sku
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
          end
          def resource
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Resource
          end
          def sku_name
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuName
          end
          def sku_tier
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuTier
          end
          def provisioning_state
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ProvisioningState
          end
          def quarantine_policy
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::QuarantinePolicy
          end
          def import_source_credentials
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSourceCredentials
          end
          def trust_policy
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicy
          end
          def import_image_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportImageParameters
          end
          def registry_policies
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPolicies
          end
          def registry_name_status
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameStatus
          end
          def registry_name_check_request
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
          end
          def operation_display_definition
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDisplayDefinition
          end
          def operation_service_specification_definition
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationServiceSpecificationDefinition
          end
          def replication_update_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationUpdateParameters
          end
          def registry_identity
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryIdentity
          end
          def status
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
          end
          def replication_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationListResult
          end
          def storage_account_properties
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
          end
          def registry_update_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
          end
          def webhook_create_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
          end
          def registry_password
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPassword
          end
          def regenerate_credential_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegenerateCredentialParameters
          end
          def webhook_update_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
          end
          def event_info
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventInfo
          end
          def webhook_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
          end
          def callback_config
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::CallbackConfig
          end
          def operation_metric_specification_definition
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationMetricSpecificationDefinition
          end
          def registry_usage_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
          end
          def target
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
          end
          def event_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
          end
          def registry_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
          end
          def registry_list_credentials_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListCredentialsResult
          end
          def event_content
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
          end
          def event_request_message
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventRequestMessage
          end
          def import_source
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSource
          end
        end
      end
    end
  end
end
