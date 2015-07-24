# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Network
  module Models
    #
    # Properties of Backend Address Pool of application gateway
    #
    class ApplicationGatewayBackendAddressPoolPropertiesFormat
      # @return [Array<SubResource>] Gets or sets backendIpConfiguration of
      # application gateway
      attr_accessor :backend_ip_configurations

      # @return [Array<ApplicationGatewayBackendAddress>] Gets or sets the
      # backend addresses
      attr_accessor :backend_addresses

      # @return [String] Gets or sets Provisioning state of the backend
      # address pool resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      def initialize
        @backend_ip_configurations = [];
        @backend_addresses = [];
      end

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @backend_ip_configurations.each{ |e| e.validate if e.respond_to?(:validate) } unless @backend_ip_configurations.nil?
        @backend_addresses.each{ |e| e.validate if e.respond_to?(:validate) } unless @backend_addresses.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.backend_ip_configurations
        if (serialized_property)
          serializedArray = [];
          serialized_property.each do |element|
            if (element)
              element = Azure::ARM::Network::Models::SubResource.serialize_object(element)
            end
            serializedArray.push(element);
          end
          serialized_property = serializedArray;
        end
        output_object['backendIpConfigurations'] = serialized_property unless serialized_property.nil?

        serialized_property = object.backend_addresses
        if (serialized_property)
          serializedArray = [];
          serialized_property.each do |element1|
            if (element1)
              element1 = Azure::ARM::Network::Models::ApplicationGatewayBackendAddress.serialize_object(element1)
            end
            serializedArray.push(element1);
          end
          serialized_property = serializedArray;
        end
        output_object['backendAddresses'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ApplicationGatewayBackendAddressPoolPropertiesFormat]
      # Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ApplicationGatewayBackendAddressPoolPropertiesFormat.new

        deserialized_property = object['backendIpConfigurations']
        if (deserialized_property)
          deserializedArray = [];
          deserialized_property.each do |element2|
            if (element2)
              element2 = Azure::ARM::Network::Models::SubResource.deserialize_object(element2)
            end
            deserializedArray.push(element2);
          end
          deserialized_property = deserializedArray;
        end
        output_object.backend_ip_configurations = deserialized_property

        deserialized_property = object['backendAddresses']
        if (deserialized_property)
          deserializedArray = [];
          deserialized_property.each do |element3|
            if (element3)
              element3 = Azure::ARM::Network::Models::ApplicationGatewayBackendAddress.deserialize_object(element3)
            end
            deserializedArray.push(element3);
          end
          deserialized_property = deserializedArray;
        end
        output_object.backend_addresses = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
