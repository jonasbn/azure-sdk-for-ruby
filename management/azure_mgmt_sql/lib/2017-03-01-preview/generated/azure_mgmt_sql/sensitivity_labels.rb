# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  #
  # The Azure SQL Database management API provides a RESTful set of web
  # services that interact with Azure SQL Database services to manage your
  # databases. The API enables you to create, retrieve, update, and delete
  # databases.
  #
  class SensitivityLabels
    include MsRestAzure

    #
    # Creates and initializes a new instance of the SensitivityLabels class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SqlManagementClient] reference to the SqlManagementClient
    attr_reader :client

    #
    # Gets the sensitivity labels of a given database
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<SensitivityLabel>] operation results.
    #
    def list_by_database(resource_group_name, server_name, database_name, filter = nil, custom_headers = nil)
      first_page = list_by_database_as_lazy(resource_group_name, server_name, database_name, filter, custom_headers)
      first_page.get_all_items
    end

    #
    # Gets the sensitivity labels of a given database
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_database_with_http_info(resource_group_name, server_name, database_name, filter = nil, custom_headers = nil)
      list_by_database_async(resource_group_name, server_name, database_name, filter, custom_headers).value!
    end

    #
    # Gets the sensitivity labels of a given database
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_database_async(resource_group_name, server_name, database_name, filter = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/sensitivityLabels'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'databaseName' => database_name,'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::SensitivityLabelListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the sensitivity label of a given column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param sensitivity_label_source [SensitivityLabelSource] The source of the
    # sensitivity label. Possible values include: 'current', 'recommended'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SensitivityLabel] operation results.
    #
    def get(resource_group_name, server_name, database_name, schema_name, table_name, column_name, sensitivity_label_source, custom_headers = nil)
      response = get_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, sensitivity_label_source, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the sensitivity label of a given column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param sensitivity_label_source [SensitivityLabelSource] The source of the
    # sensitivity label. Possible values include: 'current', 'recommended'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, server_name, database_name, schema_name, table_name, column_name, sensitivity_label_source, custom_headers = nil)
      get_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, sensitivity_label_source, custom_headers).value!
    end

    #
    # Gets the sensitivity label of a given column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param sensitivity_label_source [SensitivityLabelSource] The source of the
    # sensitivity label. Possible values include: 'current', 'recommended'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, sensitivity_label_source, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?
      fail ArgumentError, 'schema_name is nil' if schema_name.nil?
      fail ArgumentError, 'table_name is nil' if table_name.nil?
      fail ArgumentError, 'column_name is nil' if column_name.nil?
      fail ArgumentError, 'sensitivity_label_source is nil' if sensitivity_label_source.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/schemas/{schemaName}/tables/{tableName}/columns/{columnName}/sensitivityLabels/{sensitivityLabelSource}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'databaseName' => database_name,'schemaName' => schema_name,'tableName' => table_name,'columnName' => column_name,'sensitivityLabelSource' => sensitivity_label_source,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::SensitivityLabel.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Creates or updates the sensitivity label of a given column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param parameters [SensitivityLabel] The column sensitivity label resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SensitivityLabel] operation results.
    #
    def create_or_update(resource_group_name, server_name, database_name, schema_name, table_name, column_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates the sensitivity label of a given column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param parameters [SensitivityLabel] The column sensitivity label resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, server_name, database_name, schema_name, table_name, column_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, parameters, custom_headers).value!
    end

    #
    # Creates or updates the sensitivity label of a given column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param parameters [SensitivityLabel] The column sensitivity label resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?
      fail ArgumentError, 'schema_name is nil' if schema_name.nil?
      fail ArgumentError, 'table_name is nil' if table_name.nil?
      fail ArgumentError, 'column_name is nil' if column_name.nil?
      sensitivity_label_source = 'current'
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::SensitivityLabel.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/schemas/{schemaName}/tables/{tableName}/columns/{columnName}/sensitivityLabels/{sensitivityLabelSource}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'databaseName' => database_name,'schemaName' => schema_name,'tableName' => table_name,'columnName' => column_name,'sensitivityLabelSource' => sensitivity_label_source,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::SensitivityLabel.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::SensitivityLabel.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes the sensitivity label of a given column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, server_name, database_name, schema_name, table_name, column_name, custom_headers = nil)
      response = delete_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, custom_headers).value!
      nil
    end

    #
    # Deletes the sensitivity label of a given column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, server_name, database_name, schema_name, table_name, column_name, custom_headers = nil)
      delete_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, custom_headers).value!
    end

    #
    # Deletes the sensitivity label of a given column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?
      fail ArgumentError, 'schema_name is nil' if schema_name.nil?
      fail ArgumentError, 'table_name is nil' if table_name.nil?
      fail ArgumentError, 'column_name is nil' if column_name.nil?
      sensitivity_label_source = 'current'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/schemas/{schemaName}/tables/{tableName}/columns/{columnName}/sensitivityLabels/{sensitivityLabelSource}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'databaseName' => database_name,'schemaName' => schema_name,'tableName' => table_name,'columnName' => column_name,'sensitivityLabelSource' => sensitivity_label_source,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets the sensitivity labels of a given database
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SensitivityLabelListResult] operation results.
    #
    def list_by_database_next(next_page_link, custom_headers = nil)
      response = list_by_database_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the sensitivity labels of a given database
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_database_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_database_next_async(next_page_link, custom_headers).value!
    end

    #
    # Gets the sensitivity labels of a given database
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_database_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::SensitivityLabelListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the sensitivity labels of a given database
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SensitivityLabelListResult] which provide lazy access to pages of
    # the response.
    #
    def list_by_database_as_lazy(resource_group_name, server_name, database_name, filter = nil, custom_headers = nil)
      response = list_by_database_async(resource_group_name, server_name, database_name, filter, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_database_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
