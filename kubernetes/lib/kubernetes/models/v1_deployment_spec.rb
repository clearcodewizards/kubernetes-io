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
  # DeploymentSpec is the specification of the desired behavior of the Deployment.
  class V1DeploymentSpec
    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    attr_accessor :min_ready_seconds

    # Indicates that the deployment is paused.
    attr_accessor :paused

    # The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
    attr_accessor :progress_deadline_seconds

    # Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
    attr_accessor :replicas

    # The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
    attr_accessor :revision_history_limit

    # Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment. It must match the pod template's labels.
    attr_accessor :selector

    # The deployment strategy to use to replace existing pods with new ones.
    attr_accessor :strategy

    # Template describes the pods that will be created.
    attr_accessor :template

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        min_ready_seconds: :minReadySeconds,
        paused: :paused,
        progress_deadline_seconds: :progressDeadlineSeconds,
        replicas: :replicas,
        revision_history_limit: :revisionHistoryLimit,
        selector: :selector,
        strategy: :strategy,
        template: :template
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        min_ready_seconds: :Integer,
        paused: :BOOLEAN,
        progress_deadline_seconds: :Integer,
        replicas: :Integer,
        revision_history_limit: :Integer,
        selector: :V1LabelSelector,
        strategy: :V1DeploymentStrategy,
        template: :V1PodTemplateSpec
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      self.min_ready_seconds = attributes[:minReadySeconds] if attributes.key?(:minReadySeconds)

      self.paused = attributes[:paused] if attributes.key?(:paused)

      if attributes.key?(:progressDeadlineSeconds)
        self.progress_deadline_seconds = attributes[:progressDeadlineSeconds]
      end

      self.replicas = attributes[:replicas] if attributes.key?(:replicas)

      if attributes.key?(:revisionHistoryLimit)
        self.revision_history_limit = attributes[:revisionHistoryLimit]
      end

      self.selector = attributes[:selector] if attributes.key?(:selector)

      self.strategy = attributes[:strategy] if attributes.key?(:strategy)

      self.template = attributes[:template] if attributes.key?(:template)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @selector.nil?
        invalid_properties.push("invalid value for 'selector', selector cannot be nil.")
      end

      if @template.nil?
        invalid_properties.push("invalid value for 'template', template cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @selector.nil?
      return false if @template.nil?

      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        min_ready_seconds == other.min_ready_seconds &&
        paused == other.paused &&
        progress_deadline_seconds == other.progress_deadline_seconds &&
        replicas == other.replicas &&
        revision_history_limit == other.revision_history_limit &&
        selector == other.selector &&
        strategy == other.strategy &&
        template == other.template
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [min_ready_seconds, paused, progress_deadline_seconds, replicas, revision_history_limit,
       selector, strategy, template].hash
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
