# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class UpdateCustomerPartner < ::Crystalline::FieldAugmented
      extend T::Sig


      field :email, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :image, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('image') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }


      sig { params(email: ::String, id: ::String, image: ::String, name: ::String).void }
      def initialize(email: nil, id: nil, image: nil, name: nil)
        @email = email
        @id = id
        @image = image
        @name = name
      end
    end
  end
end
