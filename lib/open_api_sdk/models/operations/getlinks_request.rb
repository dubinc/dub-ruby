# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetLinksRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The domain to filter the links by. E.g. `ac.me`. If not provided, all links for the workspace will be returned.
      field :domain, T.nilable(::String), { 'query_param': { 'field_name': 'domain', 'style': 'form', 'explode': true } }
      # The folder ID to filter the links by.
      field :folder_id, T.nilable(::String), { 'query_param': { 'field_name': 'folderId', 'style': 'form', 'explode': true } }
      # The page number for pagination.
      field :page, T.nilable(::Float), { 'query_param': { 'field_name': 'page', 'style': 'form', 'explode': true } }
      # The number of items per page.
      field :page_size, T.nilable(::Float), { 'query_param': { 'field_name': 'pageSize', 'style': 'form', 'explode': true } }
      # The search term to filter the links by. The search term will be matched against the short link slug and the destination url.
      field :search, T.nilable(::String), { 'query_param': { 'field_name': 'search', 'style': 'form', 'explode': true } }
      # Whether to include archived links in the response. Defaults to `false` if not provided.
      field :show_archived, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'showArchived', 'style': 'form', 'explode': true } }
      # DEPRECATED. Use `sortBy` instead.
      field :sort, T.nilable(::OpenApiSDK::Operations::Sort), { 'query_param': { 'field_name': 'sort', 'style': 'form', 'explode': true } }
      # The field to sort the links by. The default is `createdAt`.
      field :sort_by, T.nilable(::OpenApiSDK::Operations::SortBy), { 'query_param': { 'field_name': 'sortBy', 'style': 'form', 'explode': true } }
      # The sort order. The default is `desc`.
      field :sort_order, T.nilable(::OpenApiSDK::Operations::SortOrder), { 'query_param': { 'field_name': 'sortOrder', 'style': 'form', 'explode': true } }
      # Deprecated. Use `tagIds` instead. The tag ID to filter the links by.
      field :tag_id, T.nilable(::String), { 'query_param': { 'field_name': 'tagId', 'style': 'form', 'explode': true } }
      # The tag IDs to filter the links by.
      field :tag_ids, T.nilable(::Object), { 'query_param': { 'field_name': 'tagIds', 'style': 'form', 'explode': true } }
      # The unique name of the tags assigned to the short link (case insensitive).
      field :tag_names, T.nilable(::Object), { 'query_param': { 'field_name': 'tagNames', 'style': 'form', 'explode': true } }
      # The ID of the tenant that created the link inside your system. If set, will only return links for the specified tenant.
      field :tenant_id, T.nilable(::String), { 'query_param': { 'field_name': 'tenantId', 'style': 'form', 'explode': true } }
      # The user ID to filter the links by.
      field :user_id, T.nilable(::String), { 'query_param': { 'field_name': 'userId', 'style': 'form', 'explode': true } }
      # DEPRECATED. Filter for links that have at least one tag assigned to them.
      field :with_tags, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'withTags', 'style': 'form', 'explode': true } }


      sig { params(domain: T.nilable(::String), folder_id: T.nilable(::String), page: T.nilable(::Float), page_size: T.nilable(::Float), search: T.nilable(::String), show_archived: T.nilable(T::Boolean), sort: T.nilable(::OpenApiSDK::Operations::Sort), sort_by: T.nilable(::OpenApiSDK::Operations::SortBy), sort_order: T.nilable(::OpenApiSDK::Operations::SortOrder), tag_id: T.nilable(::String), tag_ids: T.nilable(::Object), tag_names: T.nilable(::Object), tenant_id: T.nilable(::String), user_id: T.nilable(::String), with_tags: T.nilable(T::Boolean)).void }
      def initialize(domain: nil, folder_id: nil, page: nil, page_size: nil, search: nil, show_archived: nil, sort: nil, sort_by: nil, sort_order: nil, tag_id: nil, tag_ids: nil, tag_names: nil, tenant_id: nil, user_id: nil, with_tags: nil)
        @domain = domain
        @folder_id = folder_id
        @page = page
        @page_size = page_size
        @search = search
        @show_archived = show_archived
        @sort = sort
        @sort_by = sort_by
        @sort_order = sort_order
        @tag_id = tag_id
        @tag_ids = tag_ids
        @tag_names = tag_names
        @tenant_id = tenant_id
        @user_id = user_id
        @with_tags = with_tags
      end
    end
  end
end
