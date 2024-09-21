# QRCodes

## Overview

### Available Operations

* [get](#get) - Retrieve a QR code

## get

Retrieve a QR code for a link.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::GetQRCodeRequest.new(
  url: "https://normal-making.name",
)
    
res = s.qr_codes.get(req)

if ! res.res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::OpenApiSDK::Operations::GetQRCodeRequest](../../models/operations/getqrcoderequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetQRCodeResponse)](../../models/operations/getqrcoderesponse.md)**


