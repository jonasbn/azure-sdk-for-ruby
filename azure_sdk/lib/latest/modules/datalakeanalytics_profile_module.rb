# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_datalake_analytics'

module Azure::Profiles::Latest
  module DataLakeAnalytics
    module Mgmt
      ComputePolicies = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::ComputePolicies
      FirewallRules = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::FirewallRules
      Locations = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Locations
      StorageAccounts = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::StorageAccounts
      Operations = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Operations
      Accounts = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Accounts
      DataLakeStoreAccounts = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::DataLakeStoreAccounts

      module Models
        CheckNameAvailabilityParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
        CapabilityInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CapabilityInformation
        NameAvailabilityInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::NameAvailabilityInformation
        UpdateFirewallRuleParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
        UpdateComputePolicyParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateComputePolicyParameters
        UpdateStorageAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateStorageAccountParameters
        DataLakeStoreAccountInformationListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeStoreAccountInformationListResult
        AddDataLakeStoreWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddDataLakeStoreWithAccountParameters
        CreateOrUpdateComputePolicyParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateOrUpdateComputePolicyParameters
        AddStorageAccountWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddStorageAccountWithAccountParameters
        SasTokenInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SasTokenInformation
        CreateComputePolicyWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateComputePolicyWithAccountParameters
        ComputePolicyListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicyListResult
        CreateFirewallRuleWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateFirewallRuleWithAccountParameters
        CreateDataLakeAnalyticsAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateDataLakeAnalyticsAccountParameters
        CreateOrUpdateFirewallRuleParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateOrUpdateFirewallRuleParameters
        UpdateDataLakeStoreWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateDataLakeStoreWithAccountParameters
        StorageAccountInformationListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageAccountInformationListResult
        UpdateStorageAccountWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateStorageAccountWithAccountParameters
        SasTokenInformationListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SasTokenInformationListResult
        OperationDisplay = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationDisplay
        UpdateComputePolicyWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateComputePolicyWithAccountParameters
        OperationListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationListResult
        StorageContainerListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageContainerListResult
        UpdateFirewallRuleWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateFirewallRuleWithAccountParameters
        DataLakeAnalyticsAccountListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListResult
        UpdateDataLakeAnalyticsAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateDataLakeAnalyticsAccountParameters
        FirewallRuleListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallRuleListResult
        AddDataLakeStoreParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddDataLakeStoreParameters
        DataLakeStoreAccountInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeStoreAccountInformation
        AddStorageAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddStorageAccountParameters
        ComputePolicy = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicy
        StorageAccountInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageAccountInformation
        DataLakeAnalyticsAccountBasic = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountBasic
        FirewallRule = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallRule
        Operation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Operation
        FirewallState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallState
        StorageContainer = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageContainer
        DataLakeAnalyticsAccount = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccount
        TierType = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::TierType
        FirewallAllowAzureIpsState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
        AADObjectType = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AADObjectType
        DataLakeAnalyticsAccountStatus = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountStatus
        DataLakeAnalyticsAccountState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountState
        OperationOrigin = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationOrigin
        SubscriptionState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubscriptionState
        SubResource = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubResource
        Resource = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Resource
      end

      class DataLakeAnalyticsManagementClass
        attr_reader :compute_policies, :firewall_rules, :locations, :storage_accounts, :operations, :accounts, :data_lake_store_accounts, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::DataLakeAnalyticsAccountManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @compute_policies = @client_0.compute_policies
          @firewall_rules = @client_0.firewall_rules
          @locations = @client_0.locations
          @storage_accounts = @client_0.storage_accounts
          @operations = @client_0.operations
          @accounts = @client_0.accounts
          @data_lake_store_accounts = @client_0.data_lake_store_accounts

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/DataLakeAnalytics/Mgmt"
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
          def check_name_availability_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
          end
          def capability_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CapabilityInformation
          end
          def name_availability_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::NameAvailabilityInformation
          end
          def update_firewall_rule_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
          end
          def update_compute_policy_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateComputePolicyParameters
          end
          def update_storage_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateStorageAccountParameters
          end
          def data_lake_store_account_information_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeStoreAccountInformationListResult
          end
          def add_data_lake_store_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddDataLakeStoreWithAccountParameters
          end
          def create_or_update_compute_policy_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateOrUpdateComputePolicyParameters
          end
          def add_storage_account_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddStorageAccountWithAccountParameters
          end
          def sas_token_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SasTokenInformation
          end
          def create_compute_policy_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateComputePolicyWithAccountParameters
          end
          def compute_policy_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicyListResult
          end
          def create_firewall_rule_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateFirewallRuleWithAccountParameters
          end
          def create_data_lake_analytics_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateDataLakeAnalyticsAccountParameters
          end
          def create_or_update_firewall_rule_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateOrUpdateFirewallRuleParameters
          end
          def update_data_lake_store_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateDataLakeStoreWithAccountParameters
          end
          def storage_account_information_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageAccountInformationListResult
          end
          def update_storage_account_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateStorageAccountWithAccountParameters
          end
          def sas_token_information_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SasTokenInformationListResult
          end
          def operation_display
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationDisplay
          end
          def update_compute_policy_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateComputePolicyWithAccountParameters
          end
          def operation_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationListResult
          end
          def storage_container_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageContainerListResult
          end
          def update_firewall_rule_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateFirewallRuleWithAccountParameters
          end
          def data_lake_analytics_account_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListResult
          end
          def update_data_lake_analytics_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateDataLakeAnalyticsAccountParameters
          end
          def firewall_rule_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallRuleListResult
          end
          def add_data_lake_store_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddDataLakeStoreParameters
          end
          def data_lake_store_account_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeStoreAccountInformation
          end
          def add_storage_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddStorageAccountParameters
          end
          def compute_policy
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicy
          end
          def storage_account_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageAccountInformation
          end
          def data_lake_analytics_account_basic
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountBasic
          end
          def firewall_rule
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallRule
          end
          def operation
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Operation
          end
          def firewall_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallState
          end
          def storage_container
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageContainer
          end
          def data_lake_analytics_account
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccount
          end
          def tier_type
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::TierType
          end
          def firewall_allow_azure_ips_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
          end
          def aadobject_type
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AADObjectType
          end
          def data_lake_analytics_account_status
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountStatus
          end
          def data_lake_analytics_account_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountState
          end
          def operation_origin
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationOrigin
          end
          def subscription_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubscriptionState
          end
          def sub_resource
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubResource
          end
          def resource
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Resource
          end
        end
      end
    end
  end
end
