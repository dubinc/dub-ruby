# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class TrackLeadRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # The unique ID of the click that the lead conversion event is attributed to. You can read this value from `dub_id` cookie.
      field :click_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('clickId') } }
      # The unique ID of the customer in your system. Will be used to identify and attribute all future events to this customer.
      field :customer_external_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('customerExternalId') } }
      # The name of the lead event to track. Can also be used as a unique identifier to associate a given lead event for a customer for a subsequent sale event (via the `leadEventName` prop in `/track/sale`).
      field :event_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('eventName') } }
      # The avatar URL of the customer.
      field :customer_avatar, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('customerAvatar') } }
      # The email address of the customer.
      field :customer_email, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('customerEmail') } }
      # The name of the customer. If not passed, a random name will be generated (e.g. “Big Red Caribou”).
      field :customer_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('customerName') } }
      # The numerical value associated with this lead event (e.g., number of provisioned seats in a free trial). If defined as N, the lead event will be tracked N times.
      field :event_quantity, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('eventQuantity') } }
      # Additional metadata to be stored with the lead event. Max 10,000 characters.
      field :metadata, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('metadata') } }
      # The mode to use for tracking the lead event. `async` will not block the request; `wait` will block the request until the lead event is fully recorded in Dub.
      field :mode, T.nilable(::OpenApiSDK::Operations::Mode), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('mode'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::Mode, true) } }


      sig { params(click_id: ::String, customer_external_id: ::String, event_name: ::String, customer_avatar: T.nilable(::String), customer_email: T.nilable(::String), customer_name: T.nilable(::String), event_quantity: T.nilable(::Float), metadata: T.nilable(T::Hash[Symbol, ::Object]), mode: T.nilable(::OpenApiSDK::Operations::Mode)).void }
      def initialize(click_id: nil, customer_external_id: nil, event_name: nil, customer_avatar: nil, customer_email: nil, customer_name: nil, event_quantity: nil, metadata: nil, mode: nil)
        @click_id = click_id
        @customer_external_id = customer_external_id
        @event_name = event_name
        @customer_avatar = customer_avatar
        @customer_email = customer_email
        @customer_name = customer_name
        @event_quantity = event_quantity
        @metadata = metadata
        @mode = mode
      end
    end
  end
end
