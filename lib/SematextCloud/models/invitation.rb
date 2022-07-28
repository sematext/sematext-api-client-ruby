=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'

module SematextCloud
  class Invitation
    attr_accessor :app

    # For invite request, only apps.id needs to be set.
    attr_accessor :apps

    attr_accessor :id

    attr_accessor :invite_date

    attr_accessor :invite_status

    attr_accessor :invitee_email

    attr_accessor :invitee_role

    attr_accessor :invitee_status

    attr_accessor :inviter_email

    attr_accessor :uuid

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'app' => :'app',
        :'apps' => :'apps',
        :'id' => :'id',
        :'invite_date' => :'inviteDate',
        :'invite_status' => :'inviteStatus',
        :'invitee_email' => :'inviteeEmail',
        :'invitee_role' => :'inviteeRole',
        :'invitee_status' => :'inviteeStatus',
        :'inviter_email' => :'inviterEmail',
        :'uuid' => :'uuid'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'app' => :'Object',
        :'apps' => :'Object',
        :'id' => :'Object',
        :'invite_date' => :'Object',
        :'invite_status' => :'Object',
        :'invitee_email' => :'Object',
        :'invitee_role' => :'Object',
        :'invitee_status' => :'Object',
        :'inviter_email' => :'Object',
        :'uuid' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SematextCloud::Invitation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SematextCloud::Invitation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'app')
        self.app = attributes[:'app']
      end

      if attributes.key?(:'apps')
        if (value = attributes[:'apps']).is_a?(Array)
          self.apps = value
        end
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'invite_date')
        self.invite_date = attributes[:'invite_date']
      end

      if attributes.key?(:'invite_status')
        self.invite_status = attributes[:'invite_status']
      end

      if attributes.key?(:'invitee_email')
        self.invitee_email = attributes[:'invitee_email']
      end

      if attributes.key?(:'invitee_role')
        self.invitee_role = attributes[:'invitee_role']
      end

      if attributes.key?(:'invitee_status')
        self.invitee_status = attributes[:'invitee_status']
      end

      if attributes.key?(:'inviter_email')
        self.inviter_email = attributes[:'inviter_email']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invite_status_validator = EnumAttributeValidator.new('Object', ['PENDING', 'ACCEPTED', 'CANCELLED', 'DECLINED'])
      return false unless invite_status_validator.valid?(@invite_status)
      invitee_role_validator = EnumAttributeValidator.new('Object', ['SUPER_USER', 'OWNER', 'ADMIN', 'USER', 'DEMO', 'ANONYMOUS'])
      return false unless invitee_role_validator.valid?(@invitee_role)
      invitee_status_validator = EnumAttributeValidator.new('Object', ['INACTIVE', 'ACTIVE'])
      return false unless invitee_status_validator.valid?(@invitee_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invite_status Object to be assigned
    def invite_status=(invite_status)
      validator = EnumAttributeValidator.new('Object', ['PENDING', 'ACCEPTED', 'CANCELLED', 'DECLINED'])
      unless validator.valid?(invite_status)
        fail ArgumentError, "invalid value for \"invite_status\", must be one of #{validator.allowable_values}."
      end
      @invite_status = invite_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invitee_role Object to be assigned
    def invitee_role=(invitee_role)
      validator = EnumAttributeValidator.new('Object', ['SUPER_USER', 'OWNER', 'ADMIN', 'USER', 'DEMO', 'ANONYMOUS'])
      unless validator.valid?(invitee_role)
        fail ArgumentError, "invalid value for \"invitee_role\", must be one of #{validator.allowable_values}."
      end
      @invitee_role = invitee_role
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invitee_status Object to be assigned
    def invitee_status=(invitee_status)
      validator = EnumAttributeValidator.new('Object', ['INACTIVE', 'ACTIVE'])
      unless validator.valid?(invitee_status)
        fail ArgumentError, "invalid value for \"invitee_status\", must be one of #{validator.allowable_values}."
      end
      @invitee_status = invitee_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          app == o.app &&
          apps == o.apps &&
          id == o.id &&
          invite_date == o.invite_date &&
          invite_status == o.invite_status &&
          invitee_email == o.invitee_email &&
          invitee_role == o.invitee_role &&
          invitee_status == o.invitee_status &&
          inviter_email == o.inviter_email &&
          uuid == o.uuid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [app, apps, id, invite_date, invite_status, invitee_email, invitee_role, invitee_status, inviter_email, uuid].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
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
      when :Boolean
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
        SematextCloud.const_get(type).build_from_hash(value)
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
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
    end  end
end
