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
  # Volume represents a named volume in a pod that may be accessed by any container in the pod.
  class V1Volume
    # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    attr_accessor :aws_elastic_block_store

    # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    attr_accessor :azure_disk

    # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    attr_accessor :azure_file

    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    attr_accessor :cephfs

    # Cinder represents a cinder volume attached and mounted on kubelets host machine More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md
    attr_accessor :cinder

    # ConfigMap represents a configMap that should populate this volume
    attr_accessor :config_map

    # DownwardAPI represents downward API about the pod that should populate this volume
    attr_accessor :downward_api

    # EmptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
    attr_accessor :empty_dir

    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    attr_accessor :fc

    # FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
    attr_accessor :flex_volume

    # Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running
    attr_accessor :flocker

    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    attr_accessor :gce_persistent_disk

    # GitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
    attr_accessor :git_repo

    # Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md
    attr_accessor :glusterfs

    # HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    attr_accessor :host_path

    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md
    attr_accessor :iscsi

    # Volume's name. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    attr_accessor :name

    # NFS represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
    attr_accessor :nfs

    # PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
    attr_accessor :persistent_volume_claim

    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    attr_accessor :photon_persistent_disk

    # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
    attr_accessor :portworx_volume

    # Items for all in one resources secrets, configmaps, and downward API
    attr_accessor :projected

    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    attr_accessor :quobyte

    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md
    attr_accessor :rbd

    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    attr_accessor :scale_io

    # Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
    attr_accessor :secret

    # StorageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
    attr_accessor :storageos

    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    attr_accessor :vsphere_volume

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        aws_elastic_block_store: :awsElasticBlockStore,
        azure_disk: :azureDisk,
        azure_file: :azureFile,
        cephfs: :cephfs,
        cinder: :cinder,
        config_map: :configMap,
        downward_api: :downwardAPI,
        empty_dir: :emptyDir,
        fc: :fc,
        flex_volume: :flexVolume,
        flocker: :flocker,
        gce_persistent_disk: :gcePersistentDisk,
        git_repo: :gitRepo,
        glusterfs: :glusterfs,
        host_path: :hostPath,
        iscsi: :iscsi,
        name: :name,
        nfs: :nfs,
        persistent_volume_claim: :persistentVolumeClaim,
        photon_persistent_disk: :photonPersistentDisk,
        portworx_volume: :portworxVolume,
        projected: :projected,
        quobyte: :quobyte,
        rbd: :rbd,
        scale_io: :scaleIO,
        secret: :secret,
        storageos: :storageos,
        vsphere_volume: :vsphereVolume
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        aws_elastic_block_store: :V1AWSElasticBlockStoreVolumeSource,
        azure_disk: :V1AzureDiskVolumeSource,
        azure_file: :V1AzureFileVolumeSource,
        cephfs: :V1CephFSVolumeSource,
        cinder: :V1CinderVolumeSource,
        config_map: :V1ConfigMapVolumeSource,
        downward_api: :V1DownwardAPIVolumeSource,
        empty_dir: :V1EmptyDirVolumeSource,
        fc: :V1FCVolumeSource,
        flex_volume: :V1FlexVolumeSource,
        flocker: :V1FlockerVolumeSource,
        gce_persistent_disk: :V1GCEPersistentDiskVolumeSource,
        git_repo: :V1GitRepoVolumeSource,
        glusterfs: :V1GlusterfsVolumeSource,
        host_path: :V1HostPathVolumeSource,
        iscsi: :V1ISCSIVolumeSource,
        name: :String,
        nfs: :V1NFSVolumeSource,
        persistent_volume_claim: :V1PersistentVolumeClaimVolumeSource,
        photon_persistent_disk: :V1PhotonPersistentDiskVolumeSource,
        portworx_volume: :V1PortworxVolumeSource,
        projected: :V1ProjectedVolumeSource,
        quobyte: :V1QuobyteVolumeSource,
        rbd: :V1RBDVolumeSource,
        scale_io: :V1ScaleIOVolumeSource,
        secret: :V1SecretVolumeSource,
        storageos: :V1StorageOSVolumeSource,
        vsphere_volume: :V1VsphereVirtualDiskVolumeSource
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.transform_keys(&:to_sym)

      if attributes.key?(:awsElasticBlockStore)
        self.aws_elastic_block_store = attributes[:awsElasticBlockStore]
      end

      self.azure_disk = attributes[:azureDisk] if attributes.key?(:azureDisk)

      self.azure_file = attributes[:azureFile] if attributes.key?(:azureFile)

      self.cephfs = attributes[:cephfs] if attributes.key?(:cephfs)

      self.cinder = attributes[:cinder] if attributes.key?(:cinder)

      self.config_map = attributes[:configMap] if attributes.key?(:configMap)

      self.downward_api = attributes[:downwardAPI] if attributes.key?(:downwardAPI)

      self.empty_dir = attributes[:emptyDir] if attributes.key?(:emptyDir)

      self.fc = attributes[:fc] if attributes.key?(:fc)

      self.flex_volume = attributes[:flexVolume] if attributes.key?(:flexVolume)

      self.flocker = attributes[:flocker] if attributes.key?(:flocker)

      if attributes.key?(:gcePersistentDisk)
        self.gce_persistent_disk = attributes[:gcePersistentDisk]
      end

      self.git_repo = attributes[:gitRepo] if attributes.key?(:gitRepo)

      self.glusterfs = attributes[:glusterfs] if attributes.key?(:glusterfs)

      self.host_path = attributes[:hostPath] if attributes.key?(:hostPath)

      self.iscsi = attributes[:iscsi] if attributes.key?(:iscsi)

      self.name = attributes[:name] if attributes.key?(:name)

      self.nfs = attributes[:nfs] if attributes.key?(:nfs)

      if attributes.key?(:persistentVolumeClaim)
        self.persistent_volume_claim = attributes[:persistentVolumeClaim]
      end

      if attributes.key?(:photonPersistentDisk)
        self.photon_persistent_disk = attributes[:photonPersistentDisk]
      end

      self.portworx_volume = attributes[:portworxVolume] if attributes.key?(:portworxVolume)

      self.projected = attributes[:projected] if attributes.key?(:projected)

      self.quobyte = attributes[:quobyte] if attributes.key?(:quobyte)

      self.rbd = attributes[:rbd] if attributes.key?(:rbd)

      self.scale_io = attributes[:scaleIO] if attributes.key?(:scaleIO)

      self.secret = attributes[:secret] if attributes.key?(:secret)

      self.storageos = attributes[:storageos] if attributes.key?(:storageos)

      return unless attributes.key?(:vsphereVolume)

      self.vsphere_volume = attributes[:vsphereVolume]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      invalid_properties.push("invalid value for 'name', name cannot be nil.") if @name.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?

      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        aws_elastic_block_store == other.aws_elastic_block_store &&
        azure_disk == other.azure_disk &&
        azure_file == other.azure_file &&
        cephfs == other.cephfs &&
        cinder == other.cinder &&
        config_map == other.config_map &&
        downward_api == other.downward_api &&
        empty_dir == other.empty_dir &&
        fc == other.fc &&
        flex_volume == other.flex_volume &&
        flocker == other.flocker &&
        gce_persistent_disk == other.gce_persistent_disk &&
        git_repo == other.git_repo &&
        glusterfs == other.glusterfs &&
        host_path == other.host_path &&
        iscsi == other.iscsi &&
        name == other.name &&
        nfs == other.nfs &&
        persistent_volume_claim == other.persistent_volume_claim &&
        photon_persistent_disk == other.photon_persistent_disk &&
        portworx_volume == other.portworx_volume &&
        projected == other.projected &&
        quobyte == other.quobyte &&
        rbd == other.rbd &&
        scale_io == other.scale_io &&
        secret == other.secret &&
        storageos == other.storageos &&
        vsphere_volume == other.vsphere_volume
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [aws_elastic_block_store, azure_disk, azure_file, cephfs, cinder, config_map, downward_api,
       empty_dir, fc, flex_volume, flocker, gce_persistent_disk, git_repo, glusterfs, host_path, iscsi, name, nfs, persistent_volume_claim, photon_persistent_disk, portworx_volume, projected, quobyte, rbd, scale_io, secret, storageos, vsphere_volume].hash
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
