# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetLinkInfoRequest < ::Crystalline::FieldAugmented
      extend T::Sig


      field :domain, T.nilable(::String), { 'query_param': { 'field_name': 'domain', 'style': 'form', 'explode': true } }
      # This is the ID of the link in the your database.
      field :external_id, T.nilable(::String), { 'query_param': { 'field_name': 'externalId', 'style': 'form', 'explode': true } }
      # The key of the link to retrieve. E.g. for `d.to/github`, the key is `github`.
      field :key, T.nilable(::String), { 'query_param': { 'field_name': 'key', 'style': 'form', 'explode': true } }
      # The unique ID of the short link.
      field :link_id, T.nilable(::String), { 'query_param': { 'field_name': 'linkId', 'style': 'form', 'explode': true } }


      sig { params(domain: T.nilable(::String), external_id: T.nilable(::String), key: T.nilable(::String), link_id: T.nilable(::String)).void }
      def initialize(domain: nil, external_id: nil, key: nil, link_id: nil)
        @domain = domain
        @external_id = external_id
        @key = key
        @link_id = link_id
      end
    end
  end
end
