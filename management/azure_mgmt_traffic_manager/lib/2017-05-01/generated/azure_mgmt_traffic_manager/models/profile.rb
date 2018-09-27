# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2017_05_01
  module Models
    #
    # Class representing a Traffic Manager profile.
    #
    class Profile < TrackedResource

      include MsRestAzure

      # @return [ProfileStatus] The status of the Traffic Manager profile.
      # Possible values include: 'Enabled', 'Disabled'
      attr_accessor :profile_status

      # @return [TrafficRoutingMethod] The traffic routing method of the
      # Traffic Manager profile. Possible values include: 'Performance',
      # 'Priority', 'Weighted', 'Geographic'
      attr_accessor :traffic_routing_method

      # @return [DnsConfig] The DNS settings of the Traffic Manager profile.
      attr_accessor :dns_config

      # @return [MonitorConfig] The endpoint monitoring settings of the Traffic
      # Manager profile.
      attr_accessor :monitor_config

      # @return [Array<Endpoint>] The list of endpoints in the Traffic Manager
      # profile.
      attr_accessor :endpoints


      #
      # Mapper for Profile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Profile',
          type: {
            name: 'Composite',
            class_name: 'Profile',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              profile_status: {
                required: false,
                serialized_name: 'properties.profileStatus',
                type: {
                  name: 'String'
                }
              },
              traffic_routing_method: {
                required: false,
                serialized_name: 'properties.trafficRoutingMethod',
                type: {
                  name: 'String'
                }
              },
              dns_config: {
                required: false,
                serialized_name: 'properties.dnsConfig',
                type: {
                  name: 'Composite',
                  class_name: 'DnsConfig'
                }
              },
              monitor_config: {
                required: false,
                serialized_name: 'properties.monitorConfig',
                type: {
                  name: 'Composite',
                  class_name: 'MonitorConfig'
                }
              },
              endpoints: {
                required: false,
                serialized_name: 'properties.endpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Endpoint'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
