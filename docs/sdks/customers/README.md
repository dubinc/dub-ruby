# Customers
(*customers*)

## Overview

### Available Operations

* [list](#list) - Retrieve a list of customers
* [create](#create) - Create a customer
* [get](#get) - Retrieve a customer
* [update](#update) - Update a customer
* [delete](#delete) - Delete a customer

## list

Retrieve a list of customers for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::GetCustomersRequest.new()
    
res = s.customers.list(req)

if ! res.response_bodies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::OpenApiSDK::Operations::GetCustomersRequest](../../models/operations/getcustomersrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetCustomersResponse)](../../models/operations/getcustomersresponse.md)**



## create

Create a customer for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::CreateCustomerRequestBody.new(
  external_id: "<id>",
)
    
res = s.customers.create(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::OpenApiSDK::Operations::CreateCustomerRequestBody](../../models/operations/createcustomerrequestbody.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateCustomerResponse)](../../models/operations/createcustomerresponse.md)**



## get

Retrieve a customer by ID for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::GetCustomerRequest.new(
  id: "<id>",
)
    
res = s.customers.get(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::OpenApiSDK::Operations::GetCustomerRequest](../../models/operations/getcustomerrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetCustomerResponse)](../../models/operations/getcustomerresponse.md)**



## update

Update a customer for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::UpdateCustomerRequest.new(
  id: "<id>",
)
    
res = s.customers.update(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::OpenApiSDK::Operations::UpdateCustomerRequest](../../models/operations/updatecustomerrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::UpdateCustomerResponse)](../../models/operations/updatecustomerresponse.md)**



## delete

Delete a customer from a workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.customers.delete(id="<id>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                     | Type                                          | Required                                      | Description                                   |
| --------------------------------------------- | --------------------------------------------- | --------------------------------------------- | --------------------------------------------- |
| `id`                                          | *::String*                                    | :heavy_check_mark:                            | The unique identifier of the customer in Dub. |

### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteCustomerResponse)](../../models/operations/deletecustomerresponse.md)**

