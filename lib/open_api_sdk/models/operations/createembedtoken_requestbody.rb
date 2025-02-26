# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreateEmbedTokenRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig


      field :program_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('programId') } }

      field :partner_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('partnerId') } }

      field :tenant_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tenantId') } }


      sig { params(program_id: ::String, partner_id: T.nilable(::String), tenant_id: T.nilable(::String)).void }
      def initialize(program_id: nil, partner_id: nil, tenant_id: nil)
        @program_id = program_id
        @partner_id = partner_id
        @tenant_id = tenant_id
      end
    end
  end
end
