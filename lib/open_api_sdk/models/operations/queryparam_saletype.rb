# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # QueryParamSaleType - Filter sales by type: 'new' for first-time purchases, 'recurring' for repeat purchases. If undefined, returns both.
    class QueryParamSaleType < T::Enum
      enums do
        NEW = new('new')
        RECURRING = new('recurring')
      end
    end
  end
end
