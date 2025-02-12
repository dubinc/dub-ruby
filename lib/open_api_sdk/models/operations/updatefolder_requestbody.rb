# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class UpdateFolderRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The access level of the folder within the workspace.
      field :access_level, T.nilable(::OpenApiSDK::Operations::UpdateFolderAccessLevel), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('accessLevel'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::UpdateFolderAccessLevel, true) } }
      # The name of the folder.
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }


      sig { params(access_level: T.nilable(::OpenApiSDK::Operations::UpdateFolderAccessLevel), name: T.nilable(::String)).void }
      def initialize(access_level: nil, name: nil)
        @access_level = access_level
        @name = name
      end
    end
  end
end
