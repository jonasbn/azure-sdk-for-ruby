# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Storage::Profiles::Latest
  module Mgmt
    Skus = Azure::Storage::Mgmt::V2018_03_01_preview::Skus
    Usages = Azure::Storage::Mgmt::V2018_03_01_preview::Usages
    BlobContainers = Azure::Storage::Mgmt::V2018_03_01_preview::BlobContainers
    StorageAccounts = Azure::Storage::Mgmt::V2018_03_01_preview::StorageAccounts
    Operations = Azure::Storage::Mgmt::V2018_03_01_preview::Operations

    module Models
      Action = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Action
      AccessTier = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccessTier
      LeaseStatus = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseStatus
      ProvisioningState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProvisioningState
      SignedResourceTypes = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResourceTypes
      Permissions = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Permissions
      UsageUnit = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageUnit
      SignedResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResource
      PublicAccess = Azure::Storage::Mgmt::V2018_03_01_preview::Models::PublicAccess
      LeaseState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseState
      Services = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Services
      ImmutabilityPolicyState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyState
      ImmutabilityPolicyUpdateType = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyUpdateType
      LeaseDuration = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseDuration
      State = Azure::Storage::Mgmt::V2018_03_01_preview::Models::State
      Reason = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Reason
      Dimension = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Dimension
      ServiceSpecification = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
      OperationListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationListResult
      SKUCapability = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SKUCapability
      AccountSasParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountSasParameters
      ListAccountSasResponse = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListAccountSasResponse
      KeyVaultProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyVaultProperties
      Sku = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Sku
      StorageAccountListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListResult
      EncryptionService = Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionService
      StorageAccountListKeysResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListKeysResult
      VirtualNetworkRule = Azure::Storage::Mgmt::V2018_03_01_preview::Models::VirtualNetworkRule
      StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountRegenerateKeyParameters
      ServiceSasParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSasParameters
      StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountUpdateParameters
      ListServiceSasResponse = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListServiceSasResponse
      UsageName = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageName
      Encryption = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Encryption
      Usage = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Usage
      EncryptionServices = Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionServices
      UsageListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageListResult
      CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityResult
      Identity = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Identity
      Endpoints = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Endpoints
      ManagementPoliciesRulesSetParameter = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
      NetworkRuleSet = Azure::Storage::Mgmt::V2018_03_01_preview::Models::NetworkRuleSet
      IPRule = Azure::Storage::Mgmt::V2018_03_01_preview::Models::IPRule
      StorageAccountKey = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountKey
      MetricSpecification = Azure::Storage::Mgmt::V2018_03_01_preview::Models::MetricSpecification
      LegalHoldProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHoldProperties
      StorageSkuListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageSkuListResult
      ListContainerItems = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItems
      StorageAccountCreateParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCreateParameters
      StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
      ImmutabilityPolicyProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyProperties
      Restriction = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Restriction
      TagProperty = Azure::Storage::Mgmt::V2018_03_01_preview::Models::TagProperty
      Resource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Resource
      LegalHold = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHold
      OperationDisplay = Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationDisplay
      StorageAccountManagementPolicies = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
      ProxyResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProxyResource
      TrackedResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::TrackedResource
      Operation = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Operation
      UpdateHistoryProperty = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UpdateHistoryProperty
      ImmutabilityPolicy = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicy
      ListContainerItem = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItem
      ReasonCode = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ReasonCode
      Kind = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Kind
      AzureEntityResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AzureEntityResource
      BlobContainer = Azure::Storage::Mgmt::V2018_03_01_preview::Models::BlobContainer
      CustomDomain = Azure::Storage::Mgmt::V2018_03_01_preview::Models::CustomDomain
      SkuName = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuName
      SkuTier = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuTier
      KeySource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeySource
      Bypass = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Bypass
      DefaultAction = Azure::Storage::Mgmt::V2018_03_01_preview::Models::DefaultAction
      AccountStatus = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountStatus
      KeyPermission = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyPermission
      StorageAccount = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccount
      HttpProtocol = Azure::Storage::Mgmt::V2018_03_01_preview::Models::HttpProtocol
    end

    #
    # StorageManagementClass
    #
    class StorageManagementClass
      attr_reader :skus, :usages, :blob_containers, :storage_accounts, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Storage::Mgmt::V2018_03_01_preview::StorageManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @skus = @client_0.skus
        @usages = @client_0.usages
        @blob_containers = @client_0.blob_containers
        @storage_accounts = @client_0.storage_accounts
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Storage/Mgmt'
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
      def action
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Action
      end
      def access_tier
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccessTier
      end
      def lease_status
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseStatus
      end
      def provisioning_state
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProvisioningState
      end
      def signed_resource_types
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResourceTypes
      end
      def permissions
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Permissions
      end
      def usage_unit
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageUnit
      end
      def signed_resource
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResource
      end
      def public_access
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::PublicAccess
      end
      def lease_state
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseState
      end
      def services
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Services
      end
      def immutability_policy_state
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyState
      end
      def immutability_policy_update_type
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyUpdateType
      end
      def lease_duration
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseDuration
      end
      def state
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::State
      end
      def reason
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Reason
      end
      def dimension
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Dimension
      end
      def service_specification
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
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
      def sku
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Sku
      end
      def storage_account_list_result
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListResult
      end
      def encryption_service
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionService
      end
      def storage_account_list_keys_result
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListKeysResult
      end
      def virtual_network_rule
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::VirtualNetworkRule
      end
      def storage_account_regenerate_key_parameters
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountRegenerateKeyParameters
      end
      def service_sas_parameters
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSasParameters
      end
      def storage_account_update_parameters
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountUpdateParameters
      end
      def list_service_sas_response
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListServiceSasResponse
      end
      def usage_name
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageName
      end
      def encryption
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Encryption
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
      def identity
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Identity
      end
      def endpoints
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Endpoints
      end
      def management_policies_rules_set_parameter
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
      end
      def network_rule_set
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::NetworkRuleSet
      end
      def iprule
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::IPRule
      end
      def storage_account_key
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountKey
      end
      def metric_specification
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::MetricSpecification
      end
      def legal_hold_properties
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHoldProperties
      end
      def storage_sku_list_result
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageSkuListResult
      end
      def list_container_items
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItems
      end
      def storage_account_create_parameters
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCreateParameters
      end
      def storage_account_check_name_availability_parameters
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
      end
      def immutability_policy_properties
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyProperties
      end
      def restriction
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Restriction
      end
      def tag_property
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::TagProperty
      end
      def resource
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Resource
      end
      def legal_hold
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHold
      end
      def operation_display
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationDisplay
      end
      def storage_account_management_policies
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
      end
      def proxy_resource
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProxyResource
      end
      def tracked_resource
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::TrackedResource
      end
      def operation
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Operation
      end
      def update_history_property
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::UpdateHistoryProperty
      end
      def immutability_policy
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicy
      end
      def list_container_item
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItem
      end
      def reason_code
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ReasonCode
      end
      def kind
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Kind
      end
      def azure_entity_resource
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::AzureEntityResource
      end
      def blob_container
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::BlobContainer
      end
      def custom_domain
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::CustomDomain
      end
      def sku_name
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuName
      end
      def sku_tier
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuTier
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
      def account_status
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountStatus
      end
      def key_permission
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyPermission
      end
      def storage_account
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccount
      end
      def http_protocol
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::HttpProtocol
      end
    end
  end
end
