# Type

Filter the list of commissions by type. Supports advanced filtering: single value, multiple values (comma-separated), or exclusion (prefix with `-`). Examples: `sale`, `sale,lead`, `-click`.

## Example Usage

```ruby
require "dub"

value = Type::CLICK
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `CLICK`    | click      |
| `LEAD`     | lead       |
| `SALE`     | sale       |
| `REFERRAL` | referral   |
| `CUSTOM`   | custom     |