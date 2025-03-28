# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # The request was well-formed but was unable to be followed due to semantic errors.
    class UnprocessableEntity < ::Crystalline::FieldAugmented
      extend T::Sig


      field :error, ::OpenApiSDK::Shared::UnprocessableEntityError, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('error') } }


      sig { params(error: ::OpenApiSDK::Shared::UnprocessableEntityError).void }
      def initialize(error: nil)
        @error = error
      end
    end
  end
end
