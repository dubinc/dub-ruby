# DefaultPayoutMethod

The partner's default payout method. Connect: Bank account payouts via Stripe Connect; Stablecoin: USDC payouts directly to a crypto wallet; PayPal: Payouts via PayPal

## Example Usage

```ruby
require "dub"

value = DefaultPayoutMethod::CONNECT
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `CONNECT`    | connect      |
| `STABLECOIN` | stablecoin   |
| `PAYPAL`     | paypal       |