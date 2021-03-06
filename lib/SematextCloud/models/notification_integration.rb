=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module SematextCloud
  class NotificationIntegration
    attr_accessor :applicability

    attr_accessor :create_date

    attr_accessor :created_by_owner

    attr_accessor :creator_id

    attr_accessor :id

    attr_accessor :integration_type

    attr_accessor :name

    attr_accessor :params

    attr_accessor :state

    attr_accessor :user_id

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
        :'applicability' => :'applicability',
        :'create_date' => :'createDate',
        :'created_by_owner' => :'createdByOwner',
        :'creator_id' => :'creatorId',
        :'id' => :'id',
        :'integration_type' => :'integrationType',
        :'name' => :'name',
        :'params' => :'params',
        :'state' => :'state',
        :'user_id' => :'userId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'applicability' => :'String',
        :'create_date' => :'DateTime',
        :'created_by_owner' => :'BOOLEAN',
        :'creator_id' => :'Integer',
        :'id' => :'Integer',
        :'integration_type' => :'String',
        :'name' => :'String',
        :'params' => :'Hash<String, String>',
        :'state' => :'String',
        :'user_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'applicability')
        self.applicability = attributes[:'applicability']
      end

      if attributes.has_key?(:'createDate')
        self.create_date = attributes[:'createDate']
      end

      if attributes.has_key?(:'createdByOwner')
        self.created_by_owner = attributes[:'createdByOwner']
      end

      if attributes.has_key?(:'creatorId')
        self.creator_id = attributes[:'creatorId']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'integrationType')
        self.integration_type = attributes[:'integrationType']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'params')
        if (value = attributes[:'params']).is_a?(Hash)
          self.params = value
        end
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
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
      applicability_validator = EnumAttributeValidator.new('String', ['NONE', 'USE_ALWAYS'])
      return false unless applicability_validator.valid?(@applicability)
      integration_type_validator = EnumAttributeValidator.new('String', ['PAGER_DUTY', 'NAGIOS', 'WEB_HOOKS', 'WEB_HOOKS_TEMPLATE', 'HIP_CHAT', 'EMAIL_LIST', 'TEMPORARY_EMAIL_LIST'])
      return false unless integration_type_validator.valid?(@integration_type)
      state_validator = EnumAttributeValidator.new('String', ['ACTIVE', 'DISABLED', 'DELETED'])
      return false unless state_validator.valid?(@state)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] applicability Object to be assigned
    def applicability=(applicability)
      validator = EnumAttributeValidator.new('String', ['NONE', 'USE_ALWAYS'])
      unless validator.valid?(applicability)
        fail ArgumentError, 'invalid value for "applicability", must be one of #{validator.allowable_values}.'
      end
      @applicability = applicability
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] integration_type Object to be assigned
    def integration_type=(integration_type)
      validator = EnumAttributeValidator.new('String', ['PAGER_DUTY', 'NAGIOS', 'WEB_HOOKS', 'WEB_HOOKS_TEMPLATE', 'HIP_CHAT', 'EMAIL_LIST', 'TEMPORARY_EMAIL_LIST'])
      unless validator.valid?(integration_type)
        fail ArgumentError, 'invalid value for "integration_type", must be one of #{validator.allowable_values}.'
      end
      @integration_type = integration_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ['ACTIVE', 'DISABLED', 'DELETED'])
      unless validator.valid?(state)
        fail ArgumentError, 'invalid value for "state", must be one of #{validator.allowable_values}.'
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          applicability == o.applicability &&
          create_date == o.create_date &&
          created_by_owner == o.created_by_owner &&
          creator_id == o.creator_id &&
          id == o.id &&
          integration_type == o.integration_type &&
          name == o.name &&
          params == o.params &&
          state == o.state &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [applicability, create_date, created_by_owner, creator_id, id, integration_type, name, params, state, user_id].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
        temp_model = SematextCloud.const_get(type).new
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
        value = self.send(attr)
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
