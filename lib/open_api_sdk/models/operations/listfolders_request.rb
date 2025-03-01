# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class ListFoldersRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # Whether to include the link count in the response.
      field :include_link_count, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'includeLinkCount', 'style': 'form', 'explode': true } }
      # The page number for pagination.
      field :page, T.nilable(::Float), { 'query_param': { 'field_name': 'page', 'style': 'form', 'explode': true } }
      # The number of items per page.
      field :page_size, T.nilable(::Float), { 'query_param': { 'field_name': 'pageSize', 'style': 'form', 'explode': true } }
      # The search term to filter the folders by.
      field :search, T.nilable(::String), { 'query_param': { 'field_name': 'search', 'style': 'form', 'explode': true } }


      sig { params(include_link_count: T.nilable(T::Boolean), page: T.nilable(::Float), page_size: T.nilable(::Float), search: T.nilable(::String)).void }
      def initialize(include_link_count: nil, page: nil, page_size: nil, search: nil)
        @include_link_count = include_link_count
        @page = page
        @page_size = page_size
        @search = search
      end
    end
  end
end
