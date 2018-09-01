# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Profiles::Latest
  module Storage
    module Mgmt
      Skus = Azure::Storage::Mgmt::V2018_03_01_preview::Skus
      BlobContainers = Azure::Storage::Mgmt::V2018_03_01_preview::BlobContainers
      StorageAccounts = Azure::Storage::Mgmt::V2018_03_01_preview::StorageAccounts
      Usages = Azure::Storage::Mgmt::V2018_03_01_preview::Usages
      Operations = Azure::Storage::Mgmt::V2018_03_01_preview::Operations

      module Models
        ImmutabilityPolicyState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyState
        State = Azure::Storage::Mgmt::V2018_03_01_preview::Models::State
        Reason = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Reason
        Permissions = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Permissions
        OperationDisplay = Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationDisplay
        OperationListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationListResult
        SKUCapability = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SKUCapability
        AccountSasParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountSasParameters
        ListAccountSasResponse = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListAccountSasResponse
        KeyVaultProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyVaultProperties
        ServiceSasParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSasParameters
        ListServiceSasResponse = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListServiceSasResponse
        IPRule = Azure::Storage::Mgmt::V2018_03_01_preview::Models::IPRule
        NetworkRuleSet = Azure::Storage::Mgmt::V2018_03_01_preview::Models::NetworkRuleSet
        ListContainerItems = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItems
        ManagementPoliciesRulesSetParameter = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
        LegalHoldProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHoldProperties
        Restriction = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Restriction
        TagProperty = Azure::Storage::Mgmt::V2018_03_01_preview::Models::TagProperty
        Identity = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Identity
        UpdateHistoryProperty = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UpdateHistoryProperty
        Operation = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Operation
        StorageAccountManagementPolicies = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
        ServiceSpecification = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
        BlobContainer = Azure::Storage::Mgmt::V2018_03_01_preview::Models::BlobContainer
        StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
        StorageAccountKey = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountKey
        Sku = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Sku
        Dimension = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Dimension
        StorageAccountListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListResult
        StorageAccountListKeysResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListKeysResult
        Encryption = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Encryption
        StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountRegenerateKeyParameters
        Endpoints = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Endpoints
        StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountUpdateParameters
        EncryptionService = Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionService
        UsageName = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageName
        StorageAccountCreateParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCreateParameters
        Usage = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Usage
        EncryptionServices = Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionServices
        UsageListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageListResult
        CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityResult
        VirtualNetworkRule = Azure::Storage::Mgmt::V2018_03_01_preview::Models::VirtualNetworkRule
        Resource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Resource
        MetricSpecification = Azure::Storage::Mgmt::V2018_03_01_preview::Models::MetricSpecification
        CustomDomain = Azure::Storage::Mgmt::V2018_03_01_preview::Models::CustomDomain
        StorageAccount = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccount
        ReasonCode = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ReasonCode
        ImmutabilityPolicyProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyProperties
        StorageSkuListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageSkuListResult
        AzureEntityResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AzureEntityResource
        LegalHold = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHold
        ImmutabilityPolicy = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicy
        TrackedResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::TrackedResource
        SkuName = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuName
        ProxyResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProxyResource
        Action = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Action
        Kind = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Kind
        ProvisioningState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProvisioningState
        AccountStatus = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountStatus
        SkuTier = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuTier
        ListContainerItem = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItem
        LeaseStatus = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseStatus
        KeySource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeySource
        Bypass = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Bypass
        DefaultAction = Azure::Storage::Mgmt::V2018_03_01_preview::Models::DefaultAction
        UsageUnit = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageUnit
        AccessTier = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccessTier
        SignedResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResource
        PublicAccess = Azure::Storage::Mgmt::V2018_03_01_preview::Models::PublicAccess
        KeyPermission = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyPermission
        LeaseDuration = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseDuration
        Services = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Services
        ImmutabilityPolicyUpdateType = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyUpdateType
        SignedResourceTypes = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResourceTypes
        HttpProtocol = Azure::Storage::Mgmt::V2018_03_01_preview::Models::HttpProtocol
        LeaseState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseState
      end

      class StorageManagementClass
        attr_reader :skus, :blob_containers, :storage_accounts, :usages, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Storage::Mgmt::V2018_03_01_preview::StorageManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @skus = @client_0.skus
          @blob_containers = @client_0.blob_containers
          @storage_accounts = @client_0.storage_accounts
          @usages = @client_0.usages
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Storage/Mgmt"
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
          def immutability_policy_state
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyState
          end
          def state
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::State
          end
          def reason
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Reason
          end
          def permissions
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Permissions
          end
          def operation_display
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationDisplay
          end
          def operation_list_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationListResult
          end
          def skucapability
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::SKUCapability
          end
          def account_sas_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountSasParameters
          end
          def list_account_sas_response
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListAccountSasResponse
          end
          def key_vault_properties
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyVaultProperties
          end
          def service_sas_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSasParameters
          end
          def list_service_sas_response
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListServiceSasResponse
          end
          def iprule
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::IPRule
          end
          def network_rule_set
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::NetworkRuleSet
          end
          def list_container_items
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItems
          end
          def management_policies_rules_set_parameter
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
          end
          def legal_hold_properties
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHoldProperties
          end
          def restriction
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Restriction
          end
          def tag_property
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::TagProperty
          end
          def identity
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Identity
          end
          def update_history_property
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::UpdateHistoryProperty
          end
          def operation
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Operation
          end
          def storage_account_management_policies
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
          end
          def service_specification
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
          end
          def blob_container
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::BlobContainer
          end
          def storage_account_check_name_availability_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
          end
          def storage_account_key
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountKey
          end
          def sku
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Sku
          end
          def dimension
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Dimension
          end
          def storage_account_list_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListResult
          end
          def storage_account_list_keys_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListKeysResult
          end
          def encryption
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Encryption
          end
          def storage_account_regenerate_key_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountRegenerateKeyParameters
          end
          def endpoints
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Endpoints
          end
          def storage_account_update_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountUpdateParameters
          end
          def encryption_service
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionService
          end
          def usage_name
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageName
          end
          def storage_account_create_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCreateParameters
          end
          def usage
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Usage
          end
          def encryption_services
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionServices
          end
          def usage_list_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageListResult
          end
          def check_name_availability_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityResult
          end
          def virtual_network_rule
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::VirtualNetworkRule
          end
          def resource
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Resource
          end
          def metric_specification
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::MetricSpecification
          end
          def custom_domain
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::CustomDomain
          end
          def storage_account
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccount
          end
          def reason_code
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ReasonCode
          end
          def immutability_policy_properties
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyProperties
          end
          def storage_sku_list_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageSkuListResult
          end
          def azure_entity_resource
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::AzureEntityResource
          end
          def legal_hold
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHold
          end
          def immutability_policy
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicy
          end
          def tracked_resource
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::TrackedResource
          end
          def sku_name
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuName
          end
          def proxy_resource
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProxyResource
          end
          def action
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Action
          end
          def kind
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Kind
          end
          def provisioning_state
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProvisioningState
          end
          def account_status
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountStatus
          end
          def sku_tier
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuTier
          end
          def list_container_item
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItem
          end
          def lease_status
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseStatus
          end
          def key_source
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeySource
          end
          def bypass
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Bypass
          end
          def default_action
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::DefaultAction
          end
          def usage_unit
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageUnit
          end
          def access_tier
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccessTier
          end
          def signed_resource
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResource
          end
          def public_access
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::PublicAccess
          end
          def key_permission
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyPermission
          end
          def lease_duration
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseDuration
          end
          def services
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Services
          end
          def immutability_policy_update_type
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyUpdateType
          end
          def signed_resource_types
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResourceTypes
          end
          def http_protocol
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::HttpProtocol
          end
          def lease_state
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseState
          end
        end
      end
    end
  end
end
