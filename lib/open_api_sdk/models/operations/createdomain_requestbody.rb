# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreateDomainRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Name of the domain.
      field :slug, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('slug') } }
      # Whether to archive this domain. `false` will unarchive a previously archived domain.
      field :archived, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('archived') } }
      # Redirect users to a specific URL when any link under this domain has expired.
      field :expired_url, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('expiredUrl') } }
      # The logo of the domain.
      field :logo, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('logo') } }
      # Redirect users to a specific URL when a link under this domain doesn't exist.
      field :not_found_url, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('notFoundUrl') } }
      # Provide context to your teammates in the link creation modal by showing them an example of a link to be shortened.
      field :placeholder, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('placeholder') } }


      sig { params(slug: ::String, archived: T.nilable(T::Boolean), expired_url: T.nilable(::String), logo: T.nilable(::String), not_found_url: T.nilable(::String), placeholder: T.nilable(::String)).void }
      def initialize(slug: nil, archived: nil, expired_url: nil, logo: nil, not_found_url: nil, placeholder: nil)
        @slug = slug
        @archived = archived
        @expired_url = expired_url
        @logo = logo
        @not_found_url = not_found_url
        @placeholder = placeholder
      end
    end
  end
end
