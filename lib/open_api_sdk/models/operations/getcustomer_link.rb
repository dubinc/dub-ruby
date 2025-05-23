# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetCustomerLink < ::Crystalline::FieldAugmented
      extend T::Sig

      # The domain of the short link. If not provided, the primary domain for the workspace will be used (or `dub.sh` if the workspace has no domains).
      field :domain, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('domain') } }
      # The unique ID of the short link.
      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The short link slug. If not provided, a random 7-character slug will be generated.
      field :key, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }
      # The ID of the program the short link is associated with.
      field :program_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('programId') } }
      # The full URL of the short link, including the https protocol (e.g. `https://dub.sh/try`).
      field :short_link, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('shortLink') } }
      # The destination URL of the short link.
      field :url, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('url') } }


      sig { params(domain: ::String, id: ::String, key: ::String, program_id: ::String, short_link: ::String, url: ::String).void }
      def initialize(domain: nil, id: nil, key: nil, program_id: nil, short_link: nil, url: nil)
        @domain = domain
        @id = id
        @key = key
        @program_id = program_id
        @short_link = short_link
        @url = url
      end
    end
  end
end
