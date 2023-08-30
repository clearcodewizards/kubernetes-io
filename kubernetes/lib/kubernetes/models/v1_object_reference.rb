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
  # ObjectReference contains enough information to let you inspect or modify the referred object.
  class V1ObjectReference
    # API version of the referent.
    attr_accessor :api_version

    # If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: \"spec.containers{name}\" (where \"name\" refers to the name of the container that triggered the event) or if no container name is specified \"spec.containers[2]\" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.
    attr_accessor :field_path

    # Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds
    attr_accessor :kind

    # Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    attr_accessor :name

    # Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
    attr_accessor :namespace

    # Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency
    attr_accessor :resource_version

    # UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
    attr_accessor :uid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        api_version: :apiVersion,
        field_path: :fieldPath,
        kind: :kind,
        name: :name,
        namespace: :namespace,
        resource_version: :resourceVersion,
        uid: :uid
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        api_version: :String,
        field_path: :String,
        kind: :String,
        name: :String,
        namespace: :String,
        resource_version: :String,
        uid: :String
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      self.api_version = attributes[:apiVersion] if attributes.key?(:apiVersion)

      self.field_path = attributes[:fieldPath] if attributes.key?(:fieldPath)

      self.kind = attributes[:kind] if attributes.key?(:kind)

      self.name = attributes[:name] if attributes.key?(:name)

      self.namespace = attributes[:namespace] if attributes.key?(:namespace)

      self.resource_version = attributes[:resourceVersion] if attributes.key?(:resourceVersion)

      self.uid = attributes[:uid] if attributes.key?(:uid)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      []
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        api_version == other.api_version &&
        field_path == other.field_path &&
        kind == other.kind &&
        name == other.name &&
        namespace == other.namespace &&
        resource_version == other.resource_version &&
        uid == other.uid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [api_version, field_path, kind, name, namespace, resource_version, uid].hash
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
