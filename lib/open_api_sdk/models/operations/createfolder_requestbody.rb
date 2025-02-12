# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreateFolderRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The name of the folder.
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # The access level of the folder within the workspace.
      field :access_level, T.nilable(::OpenApiSDK::Operations::AccessLevel), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('accessLevel'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::AccessLevel, true) } }


      sig { params(name: ::String, access_level: T.nilable(::OpenApiSDK::Operations::AccessLevel)).void }
      def initialize(name: nil, access_level: nil)
        @name = name
        @access_level = access_level
      end
    end
  end
end
