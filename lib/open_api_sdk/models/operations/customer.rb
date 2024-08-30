# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class Customer < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :avatar, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('avatar') } }

      field :email, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }


      sig { params(avatar: ::String, email: ::String, id: ::String, name: ::String).void }
      def initialize(avatar: nil, email: nil, id: nil, name: nil)
        @avatar = avatar
        @email = email
        @id = id
        @name = name
      end
    end
  end
end
