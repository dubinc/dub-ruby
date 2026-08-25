# Lead

The lead event object to associate the commission with.


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  | Example                                                                      |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `event_name`                                                                 | *T.nilable(::String)*                                                        | :heavy_minus_sign:                                                           | The name of the lead event to track. If not provided, defaults to 'Sign up'. | Sign up                                                                      |
| `metadata`                                                                   | T::Hash[Symbol, *::Object*]                                                  | :heavy_minus_sign:                                                           | Additional metadata to be stored with the lead event. Max 10,000 characters. |                                                                              |