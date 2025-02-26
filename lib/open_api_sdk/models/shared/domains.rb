# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class Domains < ::Crystalline::FieldAugmented
      extend T::Sig

      # Whether the domain is the primary domain for the workspace.
      field :primary, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('primary') } }
      # The domain name.
      field :slug, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('slug') } }
      # Whether the domain is verified.
      field :verified, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('verified') } }


      sig { params(primary: T::Boolean, slug: ::String, verified: T::Boolean).void }
      def initialize(primary: nil, slug: nil, verified: nil)
        @primary = primary
        @slug = slug
        @verified = verified
      end
    end
  end
end
