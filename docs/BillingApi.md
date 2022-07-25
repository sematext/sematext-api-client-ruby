# SematextCloud::BillingApi

All URIs are relative to */*

| Method                                                                               | HTTP request                                                       | Description            |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------ | ---------------------- |
| [**get_detailed_invoice_using_get1**](BillingApi.md#get_detailed_invoice_using_get1) | **GET** /users-web/api/v3/billing/invoice/{service}/{year}/{month} | Get invoice details    |
| [**list_available_plans_using_get1**](BillingApi.md#list_available_plans_using_get1) | **GET** /users-web/api/v3/billing/availablePlans                   | Get available plans    |
| [**update_plan_using_put1**](BillingApi.md#update_plan_using_put1)                   | **PUT** /users-web/api/v3/billing/info/{appId}                     | Update plan for an app |

# **get_detailed_invoice_using_get1**

> InvoiceResponse get_detailed_invoice_using_get1(service, year, month)

Get invoice details

### Example

```ruby
# load the gem
require 'SematextCloud'
# setup authorization
SematextCloud.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SematextCloud::BillingApi.new
service = 'service_example' # String | service
year = 56 # Integer | year
month = 56 # Integer | month


begin
  #Get invoice details
  result = api_instance.get_detailed_invoice_using_get1(service, year, month)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling BillingApi->get_detailed_invoice_using_get1: #{e}"
end
```

### Parameters

| Name        | Type        | Description | Notes |
| ----------- | ----------- | ----------- | ----- |
| **service** | **String**  | service     |
| **year**    | **Integer** | year        |
| **month**   | **Integer** | month       |

### Return type

[**InvoiceResponse**](InvoiceResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **list_available_plans_using_get1**

> PlansResponse list_available_plans_using_get1(opts)

Get available plans

### Example

```ruby
# load the gem
require 'SematextCloud'
# setup authorization
SematextCloud.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SematextCloud::BillingApi.new
opts = { 
  integration_id: 789, # Integer | integrationId
  app_type: 'app_type_example' # String | appType
}

begin
  #Get available plans
  result = api_instance.list_available_plans_using_get1(opts)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling BillingApi->list_available_plans_using_get1: #{e}"
end
```

### Parameters

| Name               | Type        | Description   | Notes      |
| ------------------ | ----------- | ------------- | ---------- |
| **integration_id** | **Integer** | integrationId | [optional] |
| **app_type**       | **String**  | appType       | [optional] |

### Return type

[**PlansResponse**](PlansResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **update_plan_using_put1**

> UpdatePlanResponse update_plan_using_put1(bodyapp_id)

Update plan for an app

### Example

```ruby
# load the gem
require 'SematextCloud'
# setup authorization
SematextCloud.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SematextCloud::BillingApi.new
body = SematextCloud::BillingInfo.new # BillingInfo | dto
app_id = 789 # Integer | appId


begin
  #Update plan for an app
  result = api_instance.update_plan_using_put1(bodyapp_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling BillingApi->update_plan_using_put1: #{e}"
end
```

### Parameters

| Name       | Type                              | Description | Notes |
| ---------- | --------------------------------- | ----------- | ----- |
| **body**   | [**BillingInfo**](BillingInfo.md) | dto         |
| **app_id** | **Integer**                       | appId       |

### Return type

[**UpdatePlanResponse**](UpdatePlanResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
