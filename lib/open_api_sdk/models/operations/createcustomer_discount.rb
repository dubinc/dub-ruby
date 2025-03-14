# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreateCustomerDiscount < ::Crystalline::FieldAugmented
      extend T::Sig


      field :amount, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('amount') } }

      field :coupon_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('couponId') } }

      field :coupon_test_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('couponTestId') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :max_duration, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('maxDuration') } }

      field :type, ::OpenApiSDK::Operations::CreateCustomerType, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::CreateCustomerType, false) } }

      field :partners_count, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('partnersCount') } }


      sig { params(amount: ::Float, coupon_id: ::String, coupon_test_id: ::String, id: ::String, max_duration: ::Float, type: ::OpenApiSDK::Operations::CreateCustomerType, partners_count: T.nilable(::Float)).void }
      def initialize(amount: nil, coupon_id: nil, coupon_test_id: nil, id: nil, max_duration: nil, type: nil, partners_count: nil)
        @amount = amount
        @coupon_id = coupon_id
        @coupon_test_id = coupon_test_id
        @id = id
        @max_duration = max_duration
        @type = type
        @partners_count = partners_count
      end
    end
  end
end
