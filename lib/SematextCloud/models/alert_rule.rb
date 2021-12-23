=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.30
=end

require 'date'

module SematextCloud
  class AlertRule
    attr_accessor :account_email

    attr_accessor :allowed_app_types

    attr_accessor :analyzing_time

    attr_accessor :app_display_state

    attr_accessor :app_id

    attr_accessor :app_name

    attr_accessor :app_state

    attr_accessor :app_token

    attr_accessor :app_type

    attr_accessor :back_to_normal_needed

    attr_accessor :chart_key

    attr_accessor :color

    attr_accessor :creator_email

    attr_accessor :default_agg_type

    attr_accessor :description

    attr_accessor :disallowed_app_types

    attr_accessor :enabled

    attr_accessor :estimate_operation

    attr_accessor :estimate_value

    attr_accessor :filter_values

    attr_accessor :filter_values_obj

    attr_accessor :ignore_regular_events_enabled

    attr_accessor :integrations

    attr_accessor :last_data_received_date

    attr_accessor :last_sent

    attr_accessor :last_triggered

    attr_accessor :metadata

    attr_accessor :metric_key

    attr_accessor :metric_label

    attr_accessor :min_delay_between_notifications_in_minutes

    attr_accessor :name

    attr_accessor :notification_emails

    attr_accessor :notification_integrations

    attr_accessor :notifications_enabled

    attr_accessor :query

    attr_accessor :report_name

    attr_accessor :rule_key

    attr_accessor :rule_type

    attr_accessor :runbook

    attr_accessor :saved_query_id

    attr_accessor :schedule

    attr_accessor :sematext_service

    attr_accessor :send_to_email

    attr_accessor :timezone

    attr_accessor :use_only_alert_rule_integrations

    attr_accessor :user_permissions

    attr_accessor :value_column_name

    attr_accessor :value_name

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
        :'account_email' => :'accountEmail',
        :'allowed_app_types' => :'allowedAppTypes',
        :'analyzing_time' => :'analyzingTime',
        :'app_display_state' => :'appDisplayState',
        :'app_id' => :'appId',
        :'app_name' => :'appName',
        :'app_state' => :'appState',
        :'app_token' => :'appToken',
        :'app_type' => :'appType',
        :'back_to_normal_needed' => :'backToNormalNeeded',
        :'chart_key' => :'chartKey',
        :'color' => :'color',
        :'creator_email' => :'creatorEmail',
        :'default_agg_type' => :'defaultAggType',
        :'description' => :'description',
        :'disallowed_app_types' => :'disallowedAppTypes',
        :'enabled' => :'enabled',
        :'estimate_operation' => :'estimateOperation',
        :'estimate_value' => :'estimateValue',
        :'filter_values' => :'filterValues',
        :'filter_values_obj' => :'filterValuesObj',
        :'ignore_regular_events_enabled' => :'ignoreRegularEventsEnabled',
        :'integrations' => :'integrations',
        :'last_data_received_date' => :'lastDataReceivedDate',
        :'last_sent' => :'lastSent',
        :'last_triggered' => :'lastTriggered',
        :'metadata' => :'metadata',
        :'metric_key' => :'metricKey',
        :'metric_label' => :'metricLabel',
        :'min_delay_between_notifications_in_minutes' => :'minDelayBetweenNotificationsInMinutes',
        :'name' => :'name',
        :'notification_emails' => :'notificationEmails',
        :'notification_integrations' => :'notificationIntegrations',
        :'notifications_enabled' => :'notificationsEnabled',
        :'query' => :'query',
        :'report_name' => :'reportName',
        :'rule_key' => :'ruleKey',
        :'rule_type' => :'ruleType',
        :'runbook' => :'runbook',
        :'saved_query_id' => :'savedQueryId',
        :'schedule' => :'schedule',
        :'sematext_service' => :'sematextService',
        :'send_to_email' => :'sendToEmail',
        :'timezone' => :'timezone',
        :'use_only_alert_rule_integrations' => :'useOnlyAlertRuleIntegrations',
        :'user_permissions' => :'userPermissions',
        :'value_column_name' => :'valueColumnName',
        :'value_name' => :'valueName'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_email' => :'Object',
        :'allowed_app_types' => :'Object',
        :'analyzing_time' => :'Object',
        :'app_display_state' => :'Object',
        :'app_id' => :'Object',
        :'app_name' => :'Object',
        :'app_state' => :'Object',
        :'app_token' => :'Object',
        :'app_type' => :'Object',
        :'back_to_normal_needed' => :'Object',
        :'chart_key' => :'Object',
        :'color' => :'Object',
        :'creator_email' => :'Object',
        :'default_agg_type' => :'Object',
        :'description' => :'Object',
        :'disallowed_app_types' => :'Object',
        :'enabled' => :'Object',
        :'estimate_operation' => :'Object',
        :'estimate_value' => :'Object',
        :'filter_values' => :'Object',
        :'filter_values_obj' => :'Object',
        :'ignore_regular_events_enabled' => :'Object',
        :'integrations' => :'Object',
        :'last_data_received_date' => :'Object',
        :'last_sent' => :'Object',
        :'last_triggered' => :'Object',
        :'metadata' => :'Object',
        :'metric_key' => :'Object',
        :'metric_label' => :'Object',
        :'min_delay_between_notifications_in_minutes' => :'Object',
        :'name' => :'Object',
        :'notification_emails' => :'Object',
        :'notification_integrations' => :'Object',
        :'notifications_enabled' => :'Object',
        :'query' => :'Object',
        :'report_name' => :'Object',
        :'rule_key' => :'Object',
        :'rule_type' => :'Object',
        :'runbook' => :'Object',
        :'saved_query_id' => :'Object',
        :'schedule' => :'Object',
        :'sematext_service' => :'Object',
        :'send_to_email' => :'Object',
        :'timezone' => :'Object',
        :'use_only_alert_rule_integrations' => :'Object',
        :'user_permissions' => :'Object',
        :'value_column_name' => :'Object',
        :'value_name' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SematextCloud::AlertRule` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SematextCloud::AlertRule`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_email')
        self.account_email = attributes[:'account_email']
      end

      if attributes.key?(:'allowed_app_types')
        if (value = attributes[:'allowed_app_types']).is_a?(Array)
          self.allowed_app_types = value
        end
      end

      if attributes.key?(:'analyzing_time')
        self.analyzing_time = attributes[:'analyzing_time']
      end

      if attributes.key?(:'app_display_state')
        self.app_display_state = attributes[:'app_display_state']
      end

      if attributes.key?(:'app_id')
        self.app_id = attributes[:'app_id']
      end

      if attributes.key?(:'app_name')
        self.app_name = attributes[:'app_name']
      end

      if attributes.key?(:'app_state')
        self.app_state = attributes[:'app_state']
      end

      if attributes.key?(:'app_token')
        self.app_token = attributes[:'app_token']
      end

      if attributes.key?(:'app_type')
        self.app_type = attributes[:'app_type']
      end

      if attributes.key?(:'back_to_normal_needed')
        self.back_to_normal_needed = attributes[:'back_to_normal_needed']
      end

      if attributes.key?(:'chart_key')
        self.chart_key = attributes[:'chart_key']
      end

      if attributes.key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.key?(:'creator_email')
        self.creator_email = attributes[:'creator_email']
      end

      if attributes.key?(:'default_agg_type')
        self.default_agg_type = attributes[:'default_agg_type']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'disallowed_app_types')
        if (value = attributes[:'disallowed_app_types']).is_a?(Array)
          self.disallowed_app_types = value
        end
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'estimate_operation')
        self.estimate_operation = attributes[:'estimate_operation']
      end

      if attributes.key?(:'estimate_value')
        self.estimate_value = attributes[:'estimate_value']
      end

      if attributes.key?(:'filter_values')
        self.filter_values = attributes[:'filter_values']
      end

      if attributes.key?(:'filter_values_obj')
        if (value = attributes[:'filter_values_obj']).is_a?(Array)
          self.filter_values_obj = value
        end
      end

      if attributes.key?(:'ignore_regular_events_enabled')
        self.ignore_regular_events_enabled = attributes[:'ignore_regular_events_enabled']
      end

      if attributes.key?(:'integrations')
        self.integrations = attributes[:'integrations']
      end

      if attributes.key?(:'last_data_received_date')
        self.last_data_received_date = attributes[:'last_data_received_date']
      end

      if attributes.key?(:'last_sent')
        self.last_sent = attributes[:'last_sent']
      end

      if attributes.key?(:'last_triggered')
        self.last_triggered = attributes[:'last_triggered']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'metric_key')
        self.metric_key = attributes[:'metric_key']
      end

      if attributes.key?(:'metric_label')
        self.metric_label = attributes[:'metric_label']
      end

      if attributes.key?(:'min_delay_between_notifications_in_minutes')
        self.min_delay_between_notifications_in_minutes = attributes[:'min_delay_between_notifications_in_minutes']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'notification_emails')
        if (value = attributes[:'notification_emails']).is_a?(Array)
          self.notification_emails = value
        end
      end

      if attributes.key?(:'notification_integrations')
        if (value = attributes[:'notification_integrations']).is_a?(Array)
          self.notification_integrations = value
        end
      end

      if attributes.key?(:'notifications_enabled')
        self.notifications_enabled = attributes[:'notifications_enabled']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'report_name')
        self.report_name = attributes[:'report_name']
      end

      if attributes.key?(:'rule_key')
        self.rule_key = attributes[:'rule_key']
      end

      if attributes.key?(:'rule_type')
        self.rule_type = attributes[:'rule_type']
      end

      if attributes.key?(:'runbook')
        self.runbook = attributes[:'runbook']
      end

      if attributes.key?(:'saved_query_id')
        self.saved_query_id = attributes[:'saved_query_id']
      end

      if attributes.key?(:'schedule')
        if (value = attributes[:'schedule']).is_a?(Array)
          self.schedule = value
        end
      end

      if attributes.key?(:'sematext_service')
        self.sematext_service = attributes[:'sematext_service']
      end

      if attributes.key?(:'send_to_email')
        self.send_to_email = attributes[:'send_to_email']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'use_only_alert_rule_integrations')
        self.use_only_alert_rule_integrations = attributes[:'use_only_alert_rule_integrations']
      end

      if attributes.key?(:'user_permissions')
        self.user_permissions = attributes[:'user_permissions']
      end

      if attributes.key?(:'value_column_name')
        self.value_column_name = attributes[:'value_column_name']
      end

      if attributes.key?(:'value_name')
        self.value_name = attributes[:'value_name']
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
      estimate_operation_validator = EnumAttributeValidator.new('Object', ['LESS', 'MORE', 'EQUAL', 'UN_EQUAL', 'LESS_OR_EQUAL', 'MORE_OR_EQUAL'])
      return false unless estimate_operation_validator.valid?(@estimate_operation)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] estimate_operation Object to be assigned
    def estimate_operation=(estimate_operation)
      validator = EnumAttributeValidator.new('Object', ['LESS', 'MORE', 'EQUAL', 'UN_EQUAL', 'LESS_OR_EQUAL', 'MORE_OR_EQUAL'])
      unless validator.valid?(estimate_operation)
        fail ArgumentError, "invalid value for \"estimate_operation\", must be one of #{validator.allowable_values}."
      end
      @estimate_operation = estimate_operation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_email == o.account_email &&
          allowed_app_types == o.allowed_app_types &&
          analyzing_time == o.analyzing_time &&
          app_display_state == o.app_display_state &&
          app_id == o.app_id &&
          app_name == o.app_name &&
          app_state == o.app_state &&
          app_token == o.app_token &&
          app_type == o.app_type &&
          back_to_normal_needed == o.back_to_normal_needed &&
          chart_key == o.chart_key &&
          color == o.color &&
          creator_email == o.creator_email &&
          default_agg_type == o.default_agg_type &&
          description == o.description &&
          disallowed_app_types == o.disallowed_app_types &&
          enabled == o.enabled &&
          estimate_operation == o.estimate_operation &&
          estimate_value == o.estimate_value &&
          filter_values == o.filter_values &&
          filter_values_obj == o.filter_values_obj &&
          ignore_regular_events_enabled == o.ignore_regular_events_enabled &&
          integrations == o.integrations &&
          last_data_received_date == o.last_data_received_date &&
          last_sent == o.last_sent &&
          last_triggered == o.last_triggered &&
          metadata == o.metadata &&
          metric_key == o.metric_key &&
          metric_label == o.metric_label &&
          min_delay_between_notifications_in_minutes == o.min_delay_between_notifications_in_minutes &&
          name == o.name &&
          notification_emails == o.notification_emails &&
          notification_integrations == o.notification_integrations &&
          notifications_enabled == o.notifications_enabled &&
          query == o.query &&
          report_name == o.report_name &&
          rule_key == o.rule_key &&
          rule_type == o.rule_type &&
          runbook == o.runbook &&
          saved_query_id == o.saved_query_id &&
          schedule == o.schedule &&
          sematext_service == o.sematext_service &&
          send_to_email == o.send_to_email &&
          timezone == o.timezone &&
          use_only_alert_rule_integrations == o.use_only_alert_rule_integrations &&
          user_permissions == o.user_permissions &&
          value_column_name == o.value_column_name &&
          value_name == o.value_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_email, allowed_app_types, analyzing_time, app_display_state, app_id, app_name, app_state, app_token, app_type, back_to_normal_needed, chart_key, color, creator_email, default_agg_type, description, disallowed_app_types, enabled, estimate_operation, estimate_value, filter_values, filter_values_obj, ignore_regular_events_enabled, integrations, last_data_received_date, last_sent, last_triggered, metadata, metric_key, metric_label, min_delay_between_notifications_in_minutes, name, notification_emails, notification_integrations, notifications_enabled, query, report_name, rule_key, rule_type, runbook, saved_query_id, schedule, sematext_service, send_to_email, timezone, use_only_alert_rule_integrations, user_permissions, value_column_name, value_name].hash
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
