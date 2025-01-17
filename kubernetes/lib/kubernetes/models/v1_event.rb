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
  # Event is a report of an event somewhere in the cluster.
  class V1Event
    # What action was taken/failed regarding to the Regarding object.
    attr_accessor :action

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources
    attr_accessor :api_version

    # The number of times this event has occurred.
    attr_accessor :count

    # Time when this Event was first observed.
    attr_accessor :event_time

    # The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
    attr_accessor :first_timestamp

    # The object that this event is about.
    attr_accessor :involved_object

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds
    attr_accessor :kind

    # The time at which the most recent occurrence of this event was recorded.
    attr_accessor :last_timestamp

    # A human-readable description of the status of this operation.
    attr_accessor :message

    # Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata
    attr_accessor :metadata

    # This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
    attr_accessor :reason

    # Optional secondary object for more complex actions.
    attr_accessor :related

    # Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
    attr_accessor :reporting_component

    # ID of the controller instance, e.g. `kubelet-xyzf`.
    attr_accessor :reporting_instance

    # Data about the Event series this event represents or nil if it's a singleton Event.
    attr_accessor :series

    # The component reporting this event. Should be a short machine understandable string.
    attr_accessor :source

    # Type of this event (Normal, Warning), new types could be added in the future
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        action: :action,
        api_version: :apiVersion,
        count: :count,
        event_time: :eventTime,
        first_timestamp: :firstTimestamp,
        involved_object: :involvedObject,
        kind: :kind,
        last_timestamp: :lastTimestamp,
        message: :message,
        metadata: :metadata,
        reason: :reason,
        related: :related,
        reporting_component: :reportingComponent,
        reporting_instance: :reportingInstance,
        series: :series,
        source: :source,
        type: :type
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        action: :String,
        api_version: :String,
        count: :Integer,
        event_time: :DateTime,
        first_timestamp: :DateTime,
        involved_object: :V1ObjectReference,
        kind: :String,
        last_timestamp: :DateTime,
        message: :String,
        metadata: :V1ObjectMeta,
        reason: :String,
        related: :V1ObjectReference,
        reporting_component: :String,
        reporting_instance: :String,
        series: :V1EventSeries,
        source: :V1EventSource,
        type: :String
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      self.action = attributes[:action] if attributes.key?(:action)

      self.api_version = attributes[:apiVersion] if attributes.key?(:apiVersion)

      self.count = attributes[:count] if attributes.key?(:count)

      self.event_time = attributes[:eventTime] if attributes.key?(:eventTime)

      self.first_timestamp = attributes[:firstTimestamp] if attributes.key?(:firstTimestamp)

      self.involved_object = attributes[:involvedObject] if attributes.key?(:involvedObject)

      self.kind = attributes[:kind] if attributes.key?(:kind)

      self.last_timestamp = attributes[:lastTimestamp] if attributes.key?(:lastTimestamp)

      self.message = attributes[:message] if attributes.key?(:message)

      self.metadata = attributes[:metadata] if attributes.key?(:metadata)

      self.reason = attributes[:reason] if attributes.key?(:reason)

      self.related = attributes[:related] if attributes.key?(:related)

      if attributes.key?(:reportingComponent)
        self.reporting_component = attributes[:reportingComponent]
      end

      if attributes.key?(:reportingInstance)
        self.reporting_instance = attributes[:reportingInstance]
      end

      self.series = attributes[:series] if attributes.key?(:series)

      self.source = attributes[:source] if attributes.key?(:source)

      self.type = attributes[:type] if attributes.key?(:type)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @involved_object.nil?
        invalid_properties.push("invalid value for 'involved_object', involved_object cannot be nil.")
      end

      if @metadata.nil?
        invalid_properties.push("invalid value for 'metadata', metadata cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @involved_object.nil?
      return false if @metadata.nil?

      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        action == other.action &&
        api_version == other.api_version &&
        count == other.count &&
        event_time == other.event_time &&
        first_timestamp == other.first_timestamp &&
        involved_object == other.involved_object &&
        kind == other.kind &&
        last_timestamp == other.last_timestamp &&
        message == other.message &&
        metadata == other.metadata &&
        reason == other.reason &&
        related == other.related &&
        reporting_component == other.reporting_component &&
        reporting_instance == other.reporting_instance &&
        series == other.series &&
        source == other.source &&
        type == other.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [action, api_version, count, event_time, first_timestamp, involved_object, kind,
       last_timestamp, message, metadata, reason, related, reporting_component, reporting_instance, series, source, type].hash
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
