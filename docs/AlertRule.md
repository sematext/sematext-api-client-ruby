# SematextCloud::AlertRule

## Properties
| Name                                           | Type                                                                           | Description | Notes      |
| ---------------------------------------------- | ------------------------------------------------------------------------------ | ----------- | ---------- |
| **account_email**                              | **String**                                                                     |             | [optional] |
| **allowed_app_types**                          | **Array&lt;Integer&gt;**                                                       |             | [optional] |
| **analyzing_time**                             | **String**                                                                     |             | [optional] |
| **app_display_state**                          | **String**                                                                     |             | [optional] |
| **app_id**                                     | **Integer**                                                                    |             | [optional] |
| **app_name**                                   | **String**                                                                     |             | [optional] |
| **app_state**                                  | **String**                                                                     |             | [optional] |
| **app_token**                                  | **String**                                                                     |             | [optional] |
| **app_type**                                   | **String**                                                                     |             | [optional] |
| **back_to_normal_needed**                      | **BOOLEAN**                                                                    |             | [optional] |
| **chart_key**                                  | **String**                                                                     |             | [optional] |
| **color**                                      | **String**                                                                     |             | [optional] |
| **creator_email**                              | **String**                                                                     |             | [optional] |
| **default_agg_type**                           | **String**                                                                     |             | [optional] |
| **description**                                | **String**                                                                     |             | [optional] |
| **disallowed_app_types**                       | **Array&lt;Integer&gt;**                                                       |             | [optional] |
| **enabled**                                    | **BOOLEAN**                                                                    |             | [optional] |
| **estimate_operation**                         | **String**                                                                     |             | [optional] |
| **estimate_value**                             | **Float**                                                                      |             | [optional] |
| **filter_values**                              | **String**                                                                     |             | [optional] |
| **filter_values_obj**                          | [**Array&lt;FilterValue&gt;**](FilterValue.md)                                 |             | [optional] |
| **ignore_regular_events_enabled**              | **BOOLEAN**                                                                    |             | [optional] |
| **integrations**                               | **String**                                                                     |             | [optional] |
| **last_data_received_date**                    | **Integer**                                                                    |             | [optional] |
| **last_sent**                                  | **Integer**                                                                    |             | [optional] |
| **last_triggered**                             | **Integer**                                                                    |             | [optional] |
| **metadata**                                   | **Object**                                                                     |             | [optional] |
| **metric_key**                                 | **String**                                                                     |             | [optional] |
| **metric_label**                               | **String**                                                                     |             | [optional] |
| **min_delay_between_notifications_in_minutes** | **String**                                                                     |             | [optional] |
| **name**                                       | **String**                                                                     |             | [optional] |
| **notification_emails**                        | **Array&lt;String&gt;**                                                        |             | [optional] |
| **notification_integrations**                  | [**Array&lt;NotificationIntegration&gt;**](NotificationIntegration.md)         |             | [optional] |
| **notifications_enabled**                      | **BOOLEAN**                                                                    |             | [optional] |
| **query**                                      | **String**                                                                     |             | [optional] |
| **report_name**                                | **String**                                                                     |             | [optional] |
| **rule_key**                                   | **Integer**                                                                    |             | [optional] |
| **rule_type**                                  | **String**                                                                     |             | [optional] |
| **runbook**                                    | **String**                                                                     |             | [optional] |
| **saved_query_id**                             | **Integer**                                                                    |             | [optional] |
| **schedule**                                   | [**Array&lt;AlertRuleScheduleWeekdayDto&gt;**](AlertRuleScheduleWeekdayDto.md) |             | [optional] |
| **sematext_service**                           | **String**                                                                     |             | [optional] |
| **send_to_email**                              | **String**                                                                     |             | [optional] |
| **timezone**                                   | **String**                                                                     |             | [optional] |
| **use_only_alert_rule_integrations**           | **BOOLEAN**                                                                    |             | [optional] |
| **user_permissions**                           | [**UserPermissions**](UserPermissions.md)                                      |             | [optional] |
| **value_column_name**                          | **String**                                                                     |             | [optional] |
| **value_name**                                 | **String**                                                                     |             | [optional] |
