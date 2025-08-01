# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetCustomerDiscount < ::Crystalline::FieldAugmented
      extend T::Sig


      field :amount, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('amount') } }

      field :coupon_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('couponId') } }

      field :coupon_test_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('couponTestId') } }

      field :default, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('default') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :max_duration, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('maxDuration') } }

      field :type, ::OpenApiSDK::Operations::GetCustomerType, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::GetCustomerType, false) } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }

      field :partners_count, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('partnersCount') } }


      sig { params(amount: ::Float, coupon_id: ::String, coupon_test_id: ::String, default: T::Boolean, id: ::String, max_duration: ::Float, type: ::OpenApiSDK::Operations::GetCustomerType, description: T.nilable(::String), partners_count: T.nilable(::Float)).void }
      def initialize(amount: nil, coupon_id: nil, coupon_test_id: nil, default: nil, id: nil, max_duration: nil, type: nil, description: nil, partners_count: nil)
        @amount = amount
        @coupon_id = coupon_id
        @coupon_test_id = coupon_test_id
        @default = default
        @id = id
        @max_duration = max_duration
        @type = type
        @description = description
        @partners_count = partners_count
      end
    end
  end
end
