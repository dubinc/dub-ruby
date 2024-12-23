# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class UpdateWorkspaceRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :logo, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('logo') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }

      field :slug, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('slug') } }


      sig { params(logo: T.nilable(::String), name: T.nilable(::String), slug: T.nilable(::String)).void }
      def initialize(logo: nil, name: nil, slug: nil)
        @logo = logo
        @name = name
        @slug = slug
      end
    end
  end
end
