# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetTagsRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # IDs of tags to filter by.
      field :ids, T.nilable(::Object), { 'query_param': { 'field_name': 'ids', 'style': 'form', 'explode': true } }
      # The page number for pagination.
      field :page, T.nilable(::Float), { 'query_param': { 'field_name': 'page', 'style': 'form', 'explode': true } }
      # The number of items per page.
      field :page_size, T.nilable(::Float), { 'query_param': { 'field_name': 'pageSize', 'style': 'form', 'explode': true } }
      # The search term to filter the tags by.
      field :search, T.nilable(::String), { 'query_param': { 'field_name': 'search', 'style': 'form', 'explode': true } }
      # The field to sort the tags by.
      field :sort_by, T.nilable(::OpenApiSDK::Operations::GetTagsQueryParamSortBy), { 'query_param': { 'field_name': 'sortBy', 'style': 'form', 'explode': true } }
      # The order to sort the tags by.
      field :sort_order, T.nilable(::OpenApiSDK::Operations::GetTagsQueryParamSortOrder), { 'query_param': { 'field_name': 'sortOrder', 'style': 'form', 'explode': true } }


      sig { params(ids: T.nilable(::Object), page: T.nilable(::Float), page_size: T.nilable(::Float), search: T.nilable(::String), sort_by: T.nilable(::OpenApiSDK::Operations::GetTagsQueryParamSortBy), sort_order: T.nilable(::OpenApiSDK::Operations::GetTagsQueryParamSortOrder)).void }
      def initialize(ids: nil, page: nil, page_size: nil, search: nil, sort_by: nil, sort_order: nil)
        @ids = ids
        @page = page
        @page_size = page_size
        @search = search
        @sort_by = sort_by
        @sort_order = sort_order
      end
    end
  end
end
