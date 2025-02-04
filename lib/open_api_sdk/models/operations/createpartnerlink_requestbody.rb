# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreatePartnerLinkRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the program that the partner is enrolled in.
      field :program_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('programId') } }
      # The URL to shorten. Will throw an error if the domain doesn't match the program's default URL domain.
      field :url, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('url') } }
      # The short link slug. If not provided, a random 7-character slug will be generated.
      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }
      # Additional properties that you can pass to the partner's short link. Will be used to override the default link properties for this partner.
      field :link_props, T.nilable(::OpenApiSDK::Operations::CreatePartnerLinkLinkProps), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('linkProps') } }
      # The ID of the partner to create a link for. Will take precedence over `tenantId` if provided.
      field :partner_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('partnerId') } }
      # The ID of the partner in your system. If both `partnerId` and `tenantId` are not provided, an error will be thrown.
      field :tenant_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tenantId') } }


      sig { params(program_id: ::String, url: ::String, key: T.nilable(::String), link_props: T.nilable(::OpenApiSDK::Operations::CreatePartnerLinkLinkProps), partner_id: T.nilable(::String), tenant_id: T.nilable(::String)).void }
      def initialize(program_id: nil, url: nil, key: nil, link_props: nil, partner_id: nil, tenant_id: nil)
        @program_id = program_id
        @url = url
        @key = key
        @link_props = link_props
        @partner_id = partner_id
        @tenant_id = tenant_id
      end
    end
  end
end
