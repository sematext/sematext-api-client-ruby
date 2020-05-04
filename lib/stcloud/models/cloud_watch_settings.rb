=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module stcloud
  class CloudWatchSettings
    attr_accessor :access_key

    attr_accessor :fetch_frequency

    attr_accessor :region

    attr_accessor :secret_key

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
        :'access_key' => :'accessKey',
        :'fetch_frequency' => :'fetchFrequency',
        :'region' => :'region',
        :'secret_key' => :'secretKey'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'access_key' => :'String',
        :'fetch_frequency' => :'String',
        :'region' => :'String',
        :'secret_key' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accessKey')
        self.access_key = attributes[:'accessKey']
      end

      if attributes.has_key?(:'fetchFrequency')
        self.fetch_frequency = attributes[:'fetchFrequency']
      end

      if attributes.has_key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.has_key?(:'secretKey')
        self.secret_key = attributes[:'secretKey']
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
      fetch_frequency_validator = EnumAttributeValidator.new('String', ['MINUTE', 'FIVE_MINUTES', 'FIFTEEN_MINUTES'])
      return false unless fetch_frequency_validator.valid?(@fetch_frequency)
      region_validator = EnumAttributeValidator.new('String', ['US_EAST_1', 'US_WEST_1', 'EU_WEST_1', 'US_WEST_2', 'AP_SOUTHEAST_1', 'AP_SOUTHEAST_2', 'AP_NORTHEAST_1', 'SA_EAST_1', 'GovCloud', 'CN_NORTH_1', 'US_EAST_2', 'AP_SOUTH_1', 'AP_NORTHEAST_2', 'CA_CENTRAL_1', 'EU_CENTRAL_1', 'EU_WEST_2'])
      return false unless region_validator.valid?(@region)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fetch_frequency Object to be assigned
    def fetch_frequency=(fetch_frequency)
      validator = EnumAttributeValidator.new('String', ['MINUTE', 'FIVE_MINUTES', 'FIFTEEN_MINUTES'])
      unless validator.valid?(fetch_frequency)
        fail ArgumentError, 'invalid value for "fetch_frequency", must be one of #{validator.allowable_values}.'
      end
      @fetch_frequency = fetch_frequency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] region Object to be assigned
    def region=(region)
      validator = EnumAttributeValidator.new('String', ['US_EAST_1', 'US_WEST_1', 'EU_WEST_1', 'US_WEST_2', 'AP_SOUTHEAST_1', 'AP_SOUTHEAST_2', 'AP_NORTHEAST_1', 'SA_EAST_1', 'GovCloud', 'CN_NORTH_1', 'US_EAST_2', 'AP_SOUTH_1', 'AP_NORTHEAST_2', 'CA_CENTRAL_1', 'EU_CENTRAL_1', 'EU_WEST_2'])
      unless validator.valid?(region)
        fail ArgumentError, 'invalid value for "region", must be one of #{validator.allowable_values}.'
      end
      @region = region
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          access_key == o.access_key &&
          fetch_frequency == o.fetch_frequency &&
          region == o.region &&
          secret_key == o.secret_key
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [access_key, fetch_frequency, region, secret_key].hash
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
        temp_model = stcloud.const_get(type).new
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
