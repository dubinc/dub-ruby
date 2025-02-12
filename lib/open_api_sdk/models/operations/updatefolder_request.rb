# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class UpdateFolderRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the folder to update.
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :request_body, T.nilable(::OpenApiSDK::Operations::UpdateFolderRequestBody), { 'request': { 'media_type': 'application/json' } }


      sig { params(id: ::String, request_body: T.nilable(::OpenApiSDK::Operations::UpdateFolderRequestBody)).void }
      def initialize(id: nil, request_body: nil)
        @id = id
        @request_body = request_body
      end
    end
  end
end
