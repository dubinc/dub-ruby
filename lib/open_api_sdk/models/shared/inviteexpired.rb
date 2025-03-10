# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # This response is sent when the requested content has been permanently deleted from server, with no forwarding address.
    class InviteExpired < ::Crystalline::FieldAugmented
      extend T::Sig


      field :error, ::OpenApiSDK::Shared::InviteExpiredError, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('error') } }


      sig { params(error: ::OpenApiSDK::Shared::InviteExpiredError).void }
      def initialize(error: nil)
        @error = error
      end
    end
  end
end
