# Metatags


### Available Operations

* [get](#get) - Retrieve the metatags for a URL

## get

Retrieve the metatags for a URL.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.metatags.get(url="https://dub.co")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                         | Type                              | Required                          | Description                       | Example                           |
| --------------------------------- | --------------------------------- | --------------------------------- | --------------------------------- | --------------------------------- |
| `url`                             | *::String*                        | :heavy_check_mark:                | The URL to retrieve metatags for. | https://dub.co                    |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetMetatagsResponse)](../../models/operations/getmetatagsresponse.md)**

