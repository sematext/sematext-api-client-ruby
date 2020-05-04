# stcloud::BillingApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_detailed_invoice_using_get**](BillingApi.md#get_detailed_invoice_using_get) | **GET** /users-web/api/v3/billing/invoice/{service}/{year}/{month} | Get invoice details
[**list_available_plans_using_get**](BillingApi.md#list_available_plans_using_get) | **GET** /users-web/api/v3/billing/availablePlans | Get available plans
[**update_plan_using_put**](BillingApi.md#update_plan_using_put) | **PUT** /users-web/api/v3/billing/info/{appId} | Update plan for an app


# **get_detailed_invoice_using_get**
> GenericApiResponse get_detailed_invoice_using_get(service, year, month)

Get invoice details

### Example
```ruby
# load the gem
require 'stcloud'
# setup authorization
stcloud.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = stcloud::BillingApi.new

service = 'service_example' # String | service

year = 56 # Integer | year

month = 56 # Integer | month


begin
  #Get invoice details
  result = api_instance.get_detailed_invoice_using_get(service, year, month)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling BillingApi->get_detailed_invoice_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| service | 
 **year** | **Integer**| year | 
 **month** | **Integer**| month | 

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_available_plans_using_get**
> GenericApiResponse list_available_plans_using_get(opts)

Get available plans

### Example
```ruby
# load the gem
require 'stcloud'
# setup authorization
stcloud.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = stcloud::BillingApi.new

opts = { 
  integration_id: 789, # Integer | integrationId
  app_type: 'app_type_example' # String | appType
}

begin
  #Get available plans
  result = api_instance.list_available_plans_using_get(opts)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling BillingApi->list_available_plans_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **Integer**| integrationId | [optional] 
 **app_type** | **String**| appType | [optional] 

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_plan_using_put**
> GenericApiResponse update_plan_using_put(app_id, dto)

Update plan for an app

### Example
```ruby
# load the gem
require 'stcloud'
# setup authorization
stcloud.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = stcloud::BillingApi.new

app_id = 789 # Integer | appId

dto = stcloud::BillingInfo.new # BillingInfo | dto


begin
  #Update plan for an app
  result = api_instance.update_plan_using_put(app_id, dto)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling BillingApi->update_plan_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **Integer**| appId | 
 **dto** | [**BillingInfo**](BillingInfo.md)| dto | 

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


