# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # A sale was tracked.
    class TrackSaleResponseBody < ::Crystalline::FieldAugmented
      extend T::Sig


      field :customer, ::OpenApiSDK::Operations::TrackSaleCustomer, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('customer') } }

      field :event_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('eventName') } }

      field :sale, ::OpenApiSDK::Operations::Sale, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('sale') } }


      sig { params(customer: ::OpenApiSDK::Operations::TrackSaleCustomer, event_name: ::String, sale: ::OpenApiSDK::Operations::Sale).void }
      def initialize(customer: nil, event_name: nil, sale: nil)
        @customer = customer
        @event_name = event_name
        @sale = sale
      end
    end
  end
end
