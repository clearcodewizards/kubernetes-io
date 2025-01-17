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
  # CronJobSpec describes how the job execution will look like and when it will actually run.
  class V1beta1CronJobSpec
    # Specifies how to treat concurrent executions of a Job. Valid values are: - \"Allow\" (default): allows CronJobs to run concurrently; - \"Forbid\": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - \"Replace\": cancels currently running job and replaces it with a new one
    attr_accessor :concurrency_policy

    # The number of failed finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
    attr_accessor :failed_jobs_history_limit

    # Specifies the job that will be created when executing a CronJob.
    attr_accessor :job_template

    # The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
    attr_accessor :schedule

    # Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
    attr_accessor :starting_deadline_seconds

    # The number of successful finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 3.
    attr_accessor :successful_jobs_history_limit

    # This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
    attr_accessor :suspend

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        concurrency_policy: :concurrencyPolicy,
        failed_jobs_history_limit: :failedJobsHistoryLimit,
        job_template: :jobTemplate,
        schedule: :schedule,
        starting_deadline_seconds: :startingDeadlineSeconds,
        successful_jobs_history_limit: :successfulJobsHistoryLimit,
        suspend: :suspend
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        concurrency_policy: :String,
        failed_jobs_history_limit: :Integer,
        job_template: :V1beta1JobTemplateSpec,
        schedule: :String,
        starting_deadline_seconds: :Integer,
        successful_jobs_history_limit: :Integer,
        suspend: :BOOLEAN
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:concurrencyPolicy)
        self.concurrency_policy = attributes[:concurrencyPolicy]
      end

      if attributes.key?(:failedJobsHistoryLimit)
        self.failed_jobs_history_limit = attributes[:failedJobsHistoryLimit]
      end

      self.job_template = attributes[:jobTemplate] if attributes.key?(:jobTemplate)

      self.schedule = attributes[:schedule] if attributes.key?(:schedule)

      if attributes.key?(:startingDeadlineSeconds)
        self.starting_deadline_seconds = attributes[:startingDeadlineSeconds]
      end

      if attributes.key?(:successfulJobsHistoryLimit)
        self.successful_jobs_history_limit = attributes[:successfulJobsHistoryLimit]
      end

      self.suspend = attributes[:suspend] if attributes.key?(:suspend)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @job_template.nil?
        invalid_properties.push("invalid value for 'job_template', job_template cannot be nil.")
      end

      if @schedule.nil?
        invalid_properties.push("invalid value for 'schedule', schedule cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @job_template.nil?
      return false if @schedule.nil?

      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        concurrency_policy == other.concurrency_policy &&
        failed_jobs_history_limit == other.failed_jobs_history_limit &&
        job_template == other.job_template &&
        schedule == other.schedule &&
        starting_deadline_seconds == other.starting_deadline_seconds &&
        successful_jobs_history_limit == other.successful_jobs_history_limit &&
        suspend == other.suspend
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [concurrency_policy, failed_jobs_history_limit, job_template, schedule,
       starting_deadline_seconds, successful_jobs_history_limit, suspend].hash
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
