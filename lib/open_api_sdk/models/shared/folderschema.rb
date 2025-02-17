# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class FolderSchema < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The access level of the folder within the workspace.
      field :access_level, ::OpenApiSDK::Shared::AccessLevel, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('accessLevel'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::AccessLevel, false) } }
      # The date the folder was created.
      field :created_at, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('createdAt') } }
      # The unique ID of the folder.
      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The number of links in the folder.
      field :link_count, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('linkCount') } }
      # The name of the folder.
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # The date the folder was updated.
      field :updated_at, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('updatedAt') } }


      sig { params(access_level: ::OpenApiSDK::Shared::AccessLevel, created_at: ::String, id: ::String, link_count: ::Float, name: ::String, updated_at: ::String).void }
      def initialize(access_level: nil, created_at: nil, id: nil, link_count: nil, name: nil, updated_at: nil)
        @access_level = access_level
        @created_at = created_at
        @id = id
        @link_count = link_count
        @name = name
        @updated_at = updated_at
      end
    end
  end
end
