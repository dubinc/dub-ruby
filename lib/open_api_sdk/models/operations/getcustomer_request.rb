# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetCustomerRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The unique ID of the customer. You may use either the customer's `id` on Dub (obtained via `/customers` endpoint) or their `externalId` (unique ID within your system, prefixed with `ext_`, e.g. `ext_123`).
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Whether to include expanded fields on the customer (`link`, `partner`, `discount`).
      field :include_expanded_fields, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'includeExpandedFields', 'style': 'form', 'explode': true } }


      sig { params(id: ::String, include_expanded_fields: T.nilable(T::Boolean)).void }
      def initialize(id: nil, include_expanded_fields: nil)
        @id = id
        @include_expanded_fields = include_expanded_fields
      end
    end
  end
end
