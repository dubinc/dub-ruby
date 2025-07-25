# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # ListPartnersQueryParamSortBy - The field to sort the partners by. The default is `saleAmount`.
    class ListPartnersQueryParamSortBy < T::Enum
      enums do
        CREATED_AT = new('createdAt')
        CLICKS = new('clicks')
        LEADS = new('leads')
        SALES = new('sales')
        SALE_AMOUNT = new('saleAmount')
        COMMISSIONS = new('commissions')
        NET_REVENUE = new('netRevenue')
      end
    end
  end
end
