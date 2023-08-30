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
  # SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
  class V1SecurityContext
    # AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN
    attr_accessor :allow_privilege_escalation

    # The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.
    attr_accessor :capabilities

    # Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false.
    attr_accessor :privileged

    # procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled.
    attr_accessor :proc_mount

    # Whether this container has a read-only root filesystem. Default is false.
    attr_accessor :read_only_root_filesystem

    # The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    attr_accessor :run_as_group

    # Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    attr_accessor :run_as_non_root

    # The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    attr_accessor :run_as_user

    # The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    attr_accessor :se_linux_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        allow_privilege_escalation: :allowPrivilegeEscalation,
        capabilities: :capabilities,
        privileged: :privileged,
        proc_mount: :procMount,
        read_only_root_filesystem: :readOnlyRootFilesystem,
        run_as_group: :runAsGroup,
        run_as_non_root: :runAsNonRoot,
        run_as_user: :runAsUser,
        se_linux_options: :seLinuxOptions
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        allow_privilege_escalation: :BOOLEAN,
        capabilities: :V1Capabilities,
        privileged: :BOOLEAN,
        proc_mount: :String,
        read_only_root_filesystem: :BOOLEAN,
        run_as_group: :Integer,
        run_as_non_root: :BOOLEAN,
        run_as_user: :Integer,
        se_linux_options: :V1SELinuxOptions
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:allowPrivilegeEscalation)
        self.allow_privilege_escalation = attributes[:allowPrivilegeEscalation]
      end

      self.capabilities = attributes[:capabilities] if attributes.key?(:capabilities)

      self.privileged = attributes[:privileged] if attributes.key?(:privileged)

      self.proc_mount = attributes[:procMount] if attributes.key?(:procMount)

      if attributes.key?(:readOnlyRootFilesystem)
        self.read_only_root_filesystem = attributes[:readOnlyRootFilesystem]
      end

      self.run_as_group = attributes[:runAsGroup] if attributes.key?(:runAsGroup)

      self.run_as_non_root = attributes[:runAsNonRoot] if attributes.key?(:runAsNonRoot)

      self.run_as_user = attributes[:runAsUser] if attributes.key?(:runAsUser)

      return unless attributes.key?(:seLinuxOptions)

      self.se_linux_options = attributes[:seLinuxOptions]
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
        allow_privilege_escalation == other.allow_privilege_escalation &&
        capabilities == other.capabilities &&
        privileged == other.privileged &&
        proc_mount == other.proc_mount &&
        read_only_root_filesystem == other.read_only_root_filesystem &&
        run_as_group == other.run_as_group &&
        run_as_non_root == other.run_as_non_root &&
        run_as_user == other.run_as_user &&
        se_linux_options == other.se_linux_options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allow_privilege_escalation, capabilities, privileged, proc_mount, read_only_root_filesystem,
       run_as_group, run_as_non_root, run_as_user, se_linux_options].hash
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
