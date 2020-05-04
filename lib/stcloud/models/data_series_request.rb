=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module stcloud
  class DataSeriesRequest
    attr_accessor :default_interval

    # End time of interval. Can be expressed as timestamp in milliseconds or UTC date in yyyy-MM-dd HH:mm:ss format
    attr_accessor :_end

    # Map of allowed filter values and aggregation strategy. List of available filter values can be fetched using metric filters endpoint and default aggregation strategy depends on metric
    attr_accessor :filters

    # Data points interval granularity between two data points.Default value is \"AUTO\" - calculated based on selected time span. Not required while getting filters.
    attr_accessor :granularity

    attr_accessor :interval

    # Metric name or metric group prefix
    attr_accessor :metric

    # Start time of interval. Can be expressed as timestamp in milliseconds or UTC date in yyyy-MM-dd HH:mm:ss format
    attr_accessor :start

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
        :'default_interval' => :'defaultInterval',
        :'_end' => :'end',
        :'filters' => :'filters',
        :'granularity' => :'granularity',
        :'interval' => :'interval',
        :'metric' => :'metric',
        :'start' => :'start'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'default_interval' => :'Integer',
        :'_end' => :'String',
        :'filters' => :'Hash<String, DataSeriesFilter>',
        :'granularity' => :'String',
        :'interval' => :'String',
        :'metric' => :'String',
        :'start' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'defaultInterval')
        self.default_interval = attributes[:'defaultInterval']
      end

      if attributes.has_key?(:'end')
        self._end = attributes[:'end']
      end

      if attributes.has_key?(:'filters')
        if (value = attributes[:'filters']).is_a?(Hash)
          self.filters = value
        end
      end

      if attributes.has_key?(:'granularity')
        self.granularity = attributes[:'granularity']
      end

      if attributes.has_key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.has_key?(:'metric')
        self.metric = attributes[:'metric']
      end

      if attributes.has_key?(:'start')
        self.start = attributes[:'start']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @metric.nil?
        invalid_properties.push('invalid value for "metric", metric cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      granularity_validator = EnumAttributeValidator.new('String', ['AUTO', 'ONE_MINUTE', 'FIVE_MINUTES', 'HOUR', 'DAY', 'WEEK', 'MONTH'])
      return false unless granularity_validator.valid?(@granularity)
      return false if @metric.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] granularity Object to be assigned
    def granularity=(granularity)
      validator = EnumAttributeValidator.new('String', ['AUTO', 'ONE_MINUTE', 'FIVE_MINUTES', 'HOUR', 'DAY', 'WEEK', 'MONTH'])
      unless validator.valid?(granularity)
        fail ArgumentError, 'invalid value for "granularity", must be one of #{validator.allowable_values}.'
      end
      @granularity = granularity
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_interval == o.default_interval &&
          _end == o._end &&
          filters == o.filters &&
          granularity == o.granularity &&
          interval == o.interval &&
          metric == o.metric &&
          start == o.start
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_interval, _end, filters, granularity, interval, metric, start].hash
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
