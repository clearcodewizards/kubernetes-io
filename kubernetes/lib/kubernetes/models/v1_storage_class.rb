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
  # StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.  StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
  class V1StorageClass
    # AllowVolumeExpansion shows whether the storage class allow volume expand
    attr_accessor :allow_volume_expansion

    # Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
    attr_accessor :allowed_topologies

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources
    attr_accessor :api_version

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds
    attr_accessor :kind

    # Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata
    attr_accessor :metadata

    # Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. [\"ro\", \"soft\"]. Not validated - mount of the PVs will simply fail if one is invalid.
    attr_accessor :mount_options

    # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
    attr_accessor :parameters

    # Provisioner indicates the type of the provisioner.
    attr_accessor :provisioner

    # Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
    attr_accessor :reclaim_policy

    # VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
    attr_accessor :volume_binding_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        allow_volume_expansion: :allowVolumeExpansion,
        allowed_topologies: :allowedTopologies,
        api_version: :apiVersion,
        kind: :kind,
        metadata: :metadata,
        mount_options: :mountOptions,
        parameters: :parameters,
        provisioner: :provisioner,
        reclaim_policy: :reclaimPolicy,
        volume_binding_mode: :volumeBindingMode
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        allow_volume_expansion: :BOOLEAN,
        allowed_topologies: :'Array<V1TopologySelectorTerm>',
        api_version: :String,
        kind: :String,
        metadata: :V1ObjectMeta,
        mount_options: :'Array<String>',
        parameters: :'Hash<String, String>',
        provisioner: :String,
        reclaim_policy: :String,
        volume_binding_mode: :String
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:allowVolumeExpansion)
        self.allow_volume_expansion = attributes[:allowVolumeExpansion]
      end

      if attributes.key?(:allowedTopologies) && (value = attributes[:allowedTopologies]).is_a?(Array)
        self.allowed_topologies = value
      end

      self.api_version = attributes[:apiVersion] if attributes.key?(:apiVersion)

      self.kind = attributes[:kind] if attributes.key?(:kind)

      self.metadata = attributes[:metadata] if attributes.key?(:metadata)

      if attributes.key?(:mountOptions) && (value = attributes[:mountOptions]).is_a?(Array)
        self.mount_options = value
      end

      if attributes.key?(:parameters) && (value = attributes[:parameters]).is_a?(Array)
        self.parameters = value
      end

      self.provisioner = attributes[:provisioner] if attributes.key?(:provisioner)

      self.reclaim_policy = attributes[:reclaimPolicy] if attributes.key?(:reclaimPolicy)

      return unless attributes.key?(:volumeBindingMode)

      self.volume_binding_mode = attributes[:volumeBindingMode]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @provisioner.nil?
        invalid_properties.push("invalid value for 'provisioner', provisioner cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @provisioner.nil?

      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        allow_volume_expansion == other.allow_volume_expansion &&
        allowed_topologies == other.allowed_topologies &&
        api_version == other.api_version &&
        kind == other.kind &&
        metadata == other.metadata &&
        mount_options == other.mount_options &&
        parameters == other.parameters &&
        provisioner == other.provisioner &&
        reclaim_policy == other.reclaim_policy &&
        volume_binding_mode == other.volume_binding_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allow_volume_expansion, allowed_topologies, api_version, kind, metadata, mount_options,
       parameters, provisioner, reclaim_policy, volume_binding_mode].hash
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
