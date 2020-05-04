# stcloud::DataSeriesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_interval** | **Integer** |  | [optional] 
**_end** | **String** | End time of interval. Can be expressed as timestamp in milliseconds or UTC date in yyyy-MM-dd HH:mm:ss format | [optional] 
**filters** | [**Hash&lt;String, DataSeriesFilter&gt;**](DataSeriesFilter.md) | Map of allowed filter values and aggregation strategy. List of available filter values can be fetched using metric filters endpoint and default aggregation strategy depends on metric | [optional] 
**granularity** | **String** | Data points interval granularity between two data points.Default value is \&quot;AUTO\&quot; - calculated based on selected time span. Not required while getting filters. | [optional] 
**interval** | **String** |  | [optional] 
**metric** | **String** | Metric name or metric group prefix | 
**start** | **String** | Start time of interval. Can be expressed as timestamp in milliseconds or UTC date in yyyy-MM-dd HH:mm:ss format | [optional] 

