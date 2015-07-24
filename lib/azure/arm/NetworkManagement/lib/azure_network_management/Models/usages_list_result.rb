# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Network
  module Models
    #
    # The List Usages operation response.
    #
    class UsagesListResult
      # @return [Array<Usage>] Gets or sets the list Network Resource Usages.
      attr_accessor :value

      def initialize
        @value = [];
      end

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @value.each{ |e| e.validate if e.respond_to?(:validate) } unless @value.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.value
        if (serialized_property)
          serializedArray = [];
          serialized_property.each do |element|
            if (element)
              element = Azure::ARM::Network::Models::Usage.serialize_object(element)
            end
            serializedArray.push(element);
          end
          serialized_property = serializedArray;
        end
        output_object['value'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [UsagesListResult] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = UsagesListResult.new

        deserialized_property = object['value']
        if (deserialized_property)
          deserializedArray = [];
          deserialized_property.each do |element1|
            if (element1)
              element1 = Azure::ARM::Network::Models::Usage.deserialize_object(element1)
            end
            deserializedArray.push(element1);
          end
          deserialized_property = deserializedArray;
        end
        output_object.value = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
