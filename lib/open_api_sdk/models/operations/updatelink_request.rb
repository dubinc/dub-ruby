# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class UpdateLinkRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The id of the link to update. You may use either `linkId` (obtained via `/links/info` endpoint) or `externalId` prefixed with `ext_`.
      field :link_id, ::String, { 'path_param': { 'field_name': 'linkId', 'style': 'simple', 'explode': false } }

      field :request_body, T.nilable(::OpenApiSDK::Operations::UpdateLinkRequestBody), { 'request': { 'media_type': 'application/json' } }


      sig { params(link_id: ::String, request_body: T.nilable(::OpenApiSDK::Operations::UpdateLinkRequestBody)).void }
      def initialize(link_id: nil, request_body: nil)
        @link_id = link_id
        @request_body = request_body
      end
    end
  end
end
