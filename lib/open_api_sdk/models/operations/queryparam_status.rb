# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # QueryParamStatus - Filter the list of commissions by their corresponding status.
    class QueryParamStatus < T::Enum
      enums do
        PENDING = new('pending')
        PROCESSED = new('processed')
        PAID = new('paid')
        REFUNDED = new('refunded')
        DUPLICATE = new('duplicate')
        FRAUD = new('fraud')
        CANCELED = new('canceled')
      end
    end
  end
end
