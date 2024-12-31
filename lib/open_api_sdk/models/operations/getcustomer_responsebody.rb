# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # The customer object.
    class GetCustomerResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The date the customer was created.
      field :created_at, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('createdAt') } }
      # Unique identifier for the customer in the client's app.
      field :external_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('externalId') } }
      # The unique identifier of the customer in Dub.
      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # Name of the customer.
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # Avatar URL of the customer.
      field :avatar, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('avatar') } }
      # Country of the customer.
      field :country, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('country') } }

      field :discount, T.nilable(::OpenApiSDK::Operations::GetCustomerDiscount), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('discount') } }
      # Email of the customer.
      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email') } }

      field :link, T.nilable(::OpenApiSDK::Operations::GetCustomerLink), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('link') } }

      field :partner, T.nilable(::OpenApiSDK::Operations::GetCustomerPartner), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('partner') } }


      sig { params(created_at: ::String, external_id: ::String, id: ::String, name: ::String, avatar: T.nilable(::String), country: T.nilable(::String), discount: T.nilable(::OpenApiSDK::Operations::GetCustomerDiscount), email: T.nilable(::String), link: T.nilable(::OpenApiSDK::Operations::GetCustomerLink), partner: T.nilable(::OpenApiSDK::Operations::GetCustomerPartner)).void }
      def initialize(created_at: nil, external_id: nil, id: nil, name: nil, avatar: nil, country: nil, discount: nil, email: nil, link: nil, partner: nil)
        @created_at = created_at
        @external_id = external_id
        @id = id
        @name = name
        @avatar = avatar
        @country = country
        @discount = discount
        @email = email
        @link = link
        @partner = partner
      end
    end
  end
end
