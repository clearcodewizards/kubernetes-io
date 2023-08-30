# frozen_string_literal: true

# #Kubernetes
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: v1.13.4
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 2.2.3
#

require 'date'

module Kubernetes
  # ContainerStatus contains details for the current status of this container.
  class V1ContainerStatus
    # Container's ID in the format 'docker://<container_id>'.
    attr_accessor :container_id

    # The image the container is running. More info: https://kubernetes.io/docs/concepts/containers/images
    attr_accessor :image

    # ImageID of the container's image.
    attr_accessor :image_id

    # Details about the container's last termination condition.
    attr_accessor :last_state

    # This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
    attr_accessor :name

    # Specifies whether the container has passed its readiness probe.
    attr_accessor :ready

    # The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC.
    attr_accessor :restart_count

    # Details about the container's current condition.
    attr_accessor :state

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        container_id: :containerID,
        image: :image,
        image_id: :imageID,
        last_state: :lastState,
        name: :name,
        ready: :ready,
        restart_count: :restartCount,
        state: :state
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        container_id: :String,
        image: :String,
        image_id: :String,
        last_state: :V1ContainerState,
        name: :String,
        ready: :BOOLEAN,
        restart_count: :Integer,
        state: :V1ContainerState
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      self.container_id = attributes[:containerID] if attributes.key?(:containerID)

      self.image = attributes[:image] if attributes.key?(:image)

      self.image_id = attributes[:imageID] if attributes.key?(:imageID)

      self.last_state = attributes[:lastState] if attributes.key?(:lastState)

      self.name = attributes[:name] if attributes.key?(:name)

      self.ready = attributes[:ready] if attributes.key?(:ready)

      self.restart_count = attributes[:restartCount] if attributes.key?(:restartCount)

      self.state = attributes[:state] if attributes.key?(:state)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      invalid_properties.push("invalid value for 'image', image cannot be nil.") if @image.nil?

      if @image_id.nil?
        invalid_properties.push("invalid value for 'image_id', image_id cannot be nil.")
      end

      invalid_properties.push("invalid value for 'name', name cannot be nil.") if @name.nil?

      invalid_properties.push("invalid value for 'ready', ready cannot be nil.") if @ready.nil?

      if @restart_count.nil?
        invalid_properties.push("invalid value for 'restart_count', restart_count cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @image.nil?
      return false if @image_id.nil?
      return false if @name.nil?
      return false if @ready.nil?
      return false if @restart_count.nil?

      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        container_id == other.container_id &&
        image == other.image &&
        image_id == other.image_id &&
        last_state == other.last_state &&
        name == other.name &&
        ready == other.ready &&
        restart_count == other.restart_count &&
        state == other.state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [container_id, image, image_id, last_state, name, ready, restart_count, state].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            send("#{key}=", attributes[self.class.attribute_map[key]].map do |v|
                              _deserialize(Regexp.last_match(1), v)
                            end)
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Kubernetes.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = send(attr)
        next if value.nil?

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
