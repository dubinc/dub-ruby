# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreatePartnerDiscount < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :amount, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('amount') } }

      field :coupon_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('couponId') } }

      field :coupon_test_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('couponTestId') } }

      field :duration, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('duration') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :interval, ::OpenApiSDK::Operations::CreatePartnerInterval, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('interval'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::CreatePartnerInterval, false) } }

      field :type, ::OpenApiSDK::Operations::CreatePartnerType, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::CreatePartnerType, false) } }


      sig { params(amount: ::Float, coupon_id: ::String, coupon_test_id: ::String, duration: ::Float, id: ::String, interval: ::OpenApiSDK::Operations::CreatePartnerInterval, type: ::OpenApiSDK::Operations::CreatePartnerType).void }
      def initialize(amount: nil, coupon_id: nil, coupon_test_id: nil, duration: nil, id: nil, interval: nil, type: nil)
        @amount = amount
        @coupon_id = coupon_id
        @coupon_test_id = coupon_test_id
        @duration = duration
        @id = id
        @interval = interval
        @type = type
      end
    end
  end
end
