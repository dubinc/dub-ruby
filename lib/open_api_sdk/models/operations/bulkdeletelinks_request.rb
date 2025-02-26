# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class BulkDeleteLinksRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # Comma-separated list of link IDs to delete. Maximum of 100 IDs. Non-existing IDs will be ignored.
      field :link_ids, T::Array[::String], { 'query_param': { 'field_name': 'linkIds', 'style': 'form', 'explode': false } }


      sig { params(link_ids: T::Array[::String]).void }
      def initialize(link_ids: nil)
        @link_ids = link_ids
      end
    end
  end
end
