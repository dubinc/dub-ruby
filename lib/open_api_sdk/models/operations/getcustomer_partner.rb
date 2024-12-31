# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetCustomerPartner < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :email, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }

      field :image, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('image') } }


      sig { params(email: ::String, id: ::String, name: ::String, image: T.nilable(::String)).void }
      def initialize(email: nil, id: nil, name: nil, image: nil)
        @email = email
        @id = id
        @name = name
        @image = image
      end
    end
  end
end
