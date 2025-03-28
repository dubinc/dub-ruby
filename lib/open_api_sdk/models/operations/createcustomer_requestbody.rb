# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreateCustomerRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # Unique identifier for the customer in the client's app.
      field :external_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('externalId') } }
      # Avatar URL of the customer in the client's app.
      field :avatar, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('avatar') } }
      # Email of the customer in the client's app.
      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email') } }
      # Name of the customer in the client's app. If not provided, a random name will be generated.
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }


      sig { params(external_id: ::String, avatar: T.nilable(::String), email: T.nilable(::String), name: T.nilable(::String)).void }
      def initialize(external_id: nil, avatar: nil, email: nil, name: nil)
        @external_id = external_id
        @avatar = avatar
        @email = email
        @name = name
      end
    end
  end
end
