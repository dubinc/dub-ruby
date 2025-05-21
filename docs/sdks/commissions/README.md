# Commissions
(*commissions*)

## Overview

### Available Operations

* [list](#list) - Get commissions for a program.
* [update](#update) - Update a commission.

## list

Retrieve a list of commissions for a program.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::ListCommissionsRequest.new(
  page: 1.0,
  page_size: 50.0,
)

res = s.commissions.list(req)

if ! res.response_bodies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::OpenApiSDK::Operations::ListCommissionsRequest](../../models/operations/listcommissionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(::OpenApiSDK::Operations::ListCommissionsResponse)](../../models/operations/listcommissionsresponse.md)**



## update

Update an existing commission amount. This is useful for handling refunds (partial or full) or fraudulent sales.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::UpdateCommissionRequest.new(
  id: "cm_1JVR7XRCSR0EDBAF39FZ4PMYE",
)

res = s.commissions.update(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::OpenApiSDK::Operations::UpdateCommissionRequest](../../models/operations/updatecommissionrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(::OpenApiSDK::Operations::UpdateCommissionResponse)](../../models/operations/updatecommissionresponse.md)**

