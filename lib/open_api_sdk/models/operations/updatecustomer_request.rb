# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class UpdateCustomerRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The unique identifier of the customer in Dub.
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Whether to include expanded fields on the customer (`link`, `partner`, `discount`).
      field :include_expanded_fields, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'includeExpandedFields', 'style': 'form', 'explode': true } }

      field :request_body, T.nilable(::OpenApiSDK::Operations::UpdateCustomerRequestBody), { 'request': { 'media_type': 'application/json' } }


      sig { params(id: ::String, include_expanded_fields: T.nilable(T::Boolean), request_body: T.nilable(::OpenApiSDK::Operations::UpdateCustomerRequestBody)).void }
      def initialize(id: nil, include_expanded_fields: nil, request_body: nil)
        @id = id
        @include_expanded_fields = include_expanded_fields
        @request_body = request_body
      end
    end
  end
end
