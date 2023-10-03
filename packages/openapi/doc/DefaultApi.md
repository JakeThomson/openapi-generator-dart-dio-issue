# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**test**](DefaultApi.md#test) | **POST** /test | Endpoint with multiple request bodies


# **test**
> test(testRequest)

Endpoint with multiple request bodies

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final TestRequest testRequest = ; // TestRequest | Polymorphic request body

try {
    api.test(testRequest);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->test: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testRequest** | [**TestRequest**](TestRequest.md)| Polymorphic request body | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

