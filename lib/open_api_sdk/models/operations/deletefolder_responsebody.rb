# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # The deleted folder ID.
    class DeleteFolderResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the deleted folder.
      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }


      sig { params(id: ::String).void }
      def initialize(id: nil)
        @id = id
      end
    end
  end
end
