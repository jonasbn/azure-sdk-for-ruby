# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Network
  #
  # NetworkSecurityGroups
  #
  class NetworkSecurityGroups
    #
    # Creates and initializes a new instance of the NetworkSecurityGroups class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return reference to the NetworkResourceProviderClient
    attr_reader :client

    #
    # The Delete NetworkSecurityGroup operation deletes the specifed network
    # security group
    # @param resource_group_name1 [String] The name of the resource group.
    # @param network_security_group_name1 [String] The name of the network
    # security group.
    # @param @client.api_version [String] Client Api Version.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [TODO: add type] TODO: add text
    #
    def delete(resource_group_name1, network_security_group_name1, custom_headers = nil)
      # Send request
      response = begin_delete(resource_group_name1, network_security_group_name1, custom_headers = nil).value!

      # Defining deserialization method.
      deserialize_method = lambda do |parsed_response|
      end

      # Waiting for response.
      return @client.get_post_or_delete_operation_result(response, nil, deserialize_method)
    end

    #
    # The Delete NetworkSecurityGroup operation deletes the specifed network
    # security group
    # @param resource_group_name1 [String] The name of the resource group.
    # @param network_security_group_name1 [String] The name of the network
    # security group.
    # @param @client.api_version [String] Client Api Version.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def begin_delete(resource_group_name1, network_security_group_name1, custom_headers = nil)
      fail ArgumentError, 'resource_group_name1 is nil' if resource_group_name1.nil?
      fail ArgumentError, 'network_security_group_name1 is nil' if network_security_group_name1.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name1)
      path['{networkSecurityGroupName}'] = ERB::Util.url_encode(network_security_group_name1)
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      # Create HTTP transport objects
      http_request = Net::HTTP::Delete.new(url.request_uri)

      # Set Headers
      http_request['x-ms-client-request-id'] = SecureRandom.uuid
      http_request["accept-language"] = @client.accept_language

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          http_request[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new { @client.make_http_request(http_request, url) }

      promise = promise.then do |http_response|
        status_code = http_response.code.to_i
        response_content = http_response.body
        unless (status_code == 204 || status_code == 202 || status_code == 200)
          fail MsRest::HttpOperationException.new(http_request, http_response)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # The Get NetworkSecurityGroups operation retrieves information about the
    # specified network security group.
    # @param resource_group_name1 [String] The name of the resource group.
    # @param network_security_group_name1 [String] The name of the network
    # security group.
    # @param @client.api_version [String] Client Api Version.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def get(resource_group_name1, network_security_group_name1, custom_headers = nil)
      fail ArgumentError, 'resource_group_name1 is nil' if resource_group_name1.nil?
      fail ArgumentError, 'network_security_group_name1 is nil' if network_security_group_name1.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name1)
      path['{networkSecurityGroupName}'] = ERB::Util.url_encode(network_security_group_name1)
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      # Create HTTP transport objects
      http_request = Net::HTTP::Get.new(url.request_uri)

      # Set Headers
      http_request['x-ms-client-request-id'] = SecureRandom.uuid
      http_request["accept-language"] = @client.accept_language

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          http_request[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new { @client.make_http_request(http_request, url) }

      promise = promise.then do |http_response|
        status_code = http_response.code.to_i
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Network::Models::NetworkSecurityGroup.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The Put NetworkSecurityGroup operation creates/updates a network security
    # groupin the specified resource group.
    # @param resource_group_name1 [String] The name of the resource group.
    # @param network_security_group_name1 [String] The name of the network
    # security group.
    # @param parameters1 [NetworkSecurityGroup] Parameters supplied to the
    # create/update Network Security Group operation
    # @param @client.api_version [String] Client Api Version.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [TODO: add type] TODO: add text
    #
    def create_or_update(resource_group_name1, network_security_group_name1, parameters1, custom_headers = nil)
      # Send request
      response = begin_create_or_update(resource_group_name1, network_security_group_name1, parameters1, custom_headers = nil).value!

      # Defining polling method.
      get_method = lambda { self.get(resource_group_name1, network_security_group_name1, custom_headers = nil) }

      # Defining deserialization method.
      deserialize_method = lambda do |parsed_response|
        if (parsed_response)
          parsed_response = Azure::ARM::Network::Models::NetworkSecurityGroup.deserialize_object(parsed_response)
        end
      end

      # Waiting for response.
      return @client.get_put_operation_result(response, get_method, nil, deserialize_method)
    end

    #
    # The Put NetworkSecurityGroup operation creates/updates a network security
    # groupin the specified resource group.
    # @param resource_group_name1 [String] The name of the resource group.
    # @param network_security_group_name1 [String] The name of the network
    # security group.
    # @param parameters1 [NetworkSecurityGroup] Parameters supplied to the
    # create/update Network Security Group operation
    # @param @client.api_version [String] Client Api Version.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def begin_create_or_update(resource_group_name1, network_security_group_name1, parameters1, custom_headers = nil)
      fail ArgumentError, 'resource_group_name1 is nil' if resource_group_name1.nil?
      fail ArgumentError, 'network_security_group_name1 is nil' if network_security_group_name1.nil?
      fail ArgumentError, 'parameters1 is nil' if parameters1.nil?
      parameters1.validate unless parameters1.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name1)
      path['{networkSecurityGroupName}'] = ERB::Util.url_encode(network_security_group_name1)
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      # Create HTTP transport objects
      http_request = Net::HTTP::Put.new(url.request_uri)

      # Set Headers
      http_request['x-ms-client-request-id'] = SecureRandom.uuid
      http_request["accept-language"] = @client.accept_language

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          http_request[key] = value
        end
      end

      # Serialize Request
      http_request.add_field('Content-Type', 'application/json')
      if (parameters1)
        parameters1 = Azure::ARM::Network::Models::NetworkSecurityGroup.serialize_object(parameters1)
      end
      request_content = parameters1
      http_request.body = JSON.generate(request_content, quirks_mode: true)

      # Send Request
      promise = Concurrent::Promise.new { @client.make_http_request(http_request, url) }

      promise = promise.then do |http_response|
        status_code = http_response.code.to_i
        response_content = http_response.body
        unless (status_code == 201 || status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Network::Models::NetworkSecurityGroup.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Network::Models::NetworkSecurityGroup.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The list NetworkSecurityGroups returns all network security groups in a
    # subscription
    # @param @client.api_version [String] Client Api Version.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list_all(custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/providers/Microsoft.Network/networkSecurityGroups"
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      # Create HTTP transport objects
      http_request = Net::HTTP::Get.new(url.request_uri)

      # Set Headers
      http_request['x-ms-client-request-id'] = SecureRandom.uuid
      http_request["accept-language"] = @client.accept_language

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          http_request[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new { @client.make_http_request(http_request, url) }

      promise = promise.then do |http_response|
        status_code = http_response.code.to_i
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Network::Models::NetworkSecurityGroupListResult.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The list NetworkSecurityGroups returns all network security groups in a
    # resource group
    # @param resource_group_name1 [String] The name of the resource group.
    # @param @client.api_version [String] Client Api Version.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list(resource_group_name1, custom_headers = nil)
      fail ArgumentError, 'resource_group_name1 is nil' if resource_group_name1.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name1)
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      # Create HTTP transport objects
      http_request = Net::HTTP::Get.new(url.request_uri)

      # Set Headers
      http_request['x-ms-client-request-id'] = SecureRandom.uuid
      http_request["accept-language"] = @client.accept_language

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          http_request[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new { @client.make_http_request(http_request, url) }

      promise = promise.then do |http_response|
        status_code = http_response.code.to_i
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Network::Models::NetworkSecurityGroupListResult.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The list NetworkSecurityGroups returns all network security groups in a
    # subscription
    # @param next_page_link1 [String] NextLink from the previous successful call
    # to List operation.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list_all_next(next_page_link1, custom_headers = nil)
      fail ArgumentError, 'next_page_link1 is nil' if next_page_link1.nil?
      # Construct URL
      path = "{nextLink}"
      path['{nextLink}'] = next_page_link1
      url = URI.parse(path)
      properties = {}
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      # Create HTTP transport objects
      http_request = Net::HTTP::Get.new(url.request_uri)

      # Set Headers
      http_request['x-ms-client-request-id'] = SecureRandom.uuid
      http_request["accept-language"] = @client.accept_language

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          http_request[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new { @client.make_http_request(http_request, url) }

      promise = promise.then do |http_response|
        status_code = http_response.code.to_i
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Network::Models::NetworkSecurityGroupListResult.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The list NetworkSecurityGroups returns all network security groups in a
    # resource group
    # @param next_page_link1 [String] NextLink from the previous successful call
    # to List operation.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list_next(next_page_link1, custom_headers = nil)
      fail ArgumentError, 'next_page_link1 is nil' if next_page_link1.nil?
      # Construct URL
      path = "{nextLink}"
      path['{nextLink}'] = next_page_link1
      url = URI.parse(path)
      properties = {}
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      # Create HTTP transport objects
      http_request = Net::HTTP::Get.new(url.request_uri)

      # Set Headers
      http_request['x-ms-client-request-id'] = SecureRandom.uuid
      http_request["accept-language"] = @client.accept_language

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          http_request[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new { @client.make_http_request(http_request, url) }

      promise = promise.then do |http_response|
        status_code = http_response.code.to_i
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Network::Models::NetworkSecurityGroupListResult.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

  end
end
