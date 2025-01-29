# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class WorkspaceSchema < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The AI limit of the workspace.
      field :ai_limit, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('aiLimit') } }
      # The AI usage of the workspace.
      field :ai_usage, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('aiUsage') } }
      # Specifies hostnames permitted for client-side click tracking.
      field :allowed_hostnames, T::Array[::String], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('allowedHostnames') } }
      # The date and time when the billing cycle starts for the workspace.
      field :billing_cycle_start, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('billingCycleStart') } }
      # Whether the workspace has conversion tracking enabled automatically for new links (d.to/conversions).
      field :conversion_enabled, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('conversionEnabled') } }
      # The date and time when the workspace was created.
      field :created_at, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('createdAt') } }
      # The domains of the workspace.
      field :domains, T::Array[::OpenApiSDK::Shared::Domains], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('domains') } }
      # The domains limit of the workspace.
      field :domains_limit, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('domainsLimit') } }
      # Whether the workspace has claimed a free .link domain. (dub.link/free)
      field :dot_link_claimed, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('dotLinkClaimed') } }
      # The unique ID of the workspace.
      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The invite code of the workspace.
      field :invite_code, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('inviteCode') } }
      # The links limit of the workspace.
      field :links_limit, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('linksLimit') } }
      # The links usage of the workspace.
      field :links_usage, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('linksUsage') } }
      # The logo of the workspace.
      field :logo, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('logo') } }
      # The name of the workspace.
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # Whether the workspace has Dub Partners enabled.
      field :partners_enabled, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('partnersEnabled') } }
      # The date and time when the payment failed for the workspace.
      field :payment_failed_at, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('paymentFailedAt') } }
      # The plan of the workspace.
      field :plan, ::OpenApiSDK::Shared::Plan, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('plan'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::Plan, false) } }
      # The limit of tracked revenue in the current billing cycle (in cents).
      field :sales_limit, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('salesLimit') } }
      # The dollar amount of tracked revenue in the current billing cycle (in cents).
      field :sales_usage, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('salesUsage') } }
      # The slug of the workspace.
      field :slug, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('slug') } }
      # The miscellaneous key-value store of the workspace.
      field :store, T::Hash[Symbol, ::Object], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('store') } }
      # The Stripe Connect ID of the workspace.
      field :stripe_connect_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('stripeConnectId') } }
      # The Stripe ID of the workspace.
      field :stripe_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('stripeId') } }
      # The tags limit of the workspace.
      field :tags_limit, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tagsLimit') } }
      # The usage of the workspace.
      field :usage, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('usage') } }
      # The usage limit of the workspace.
      field :usage_limit, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('usageLimit') } }
      # The role of the authenticated user in the workspace.
      field :users, T::Array[::OpenApiSDK::Shared::Users], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('users') } }
      # The users limit of the workspace.
      field :users_limit, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('usersLimit') } }
      # The feature flags of the workspace, indicating which features are enabled.
      field :flags, T.nilable(T::Hash[Symbol, T::Boolean]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('flags') } }


      sig { params(ai_limit: ::Float, ai_usage: ::Float, allowed_hostnames: T::Array[::String], billing_cycle_start: ::Float, conversion_enabled: T::Boolean, created_at: ::String, domains: T::Array[::OpenApiSDK::Shared::Domains], domains_limit: ::Float, dot_link_claimed: T::Boolean, id: ::String, invite_code: ::String, links_limit: ::Float, links_usage: ::Float, logo: ::String, name: ::String, partners_enabled: T::Boolean, payment_failed_at: ::String, plan: ::OpenApiSDK::Shared::Plan, sales_limit: ::Float, sales_usage: ::Float, slug: ::String, store: T::Hash[Symbol, ::Object], stripe_connect_id: ::String, stripe_id: ::String, tags_limit: ::Float, usage: ::Float, usage_limit: ::Float, users: T::Array[::OpenApiSDK::Shared::Users], users_limit: ::Float, flags: T.nilable(T::Hash[Symbol, T::Boolean])).void }
      def initialize(ai_limit: nil, ai_usage: nil, allowed_hostnames: nil, billing_cycle_start: nil, conversion_enabled: nil, created_at: nil, domains: nil, domains_limit: nil, dot_link_claimed: nil, id: nil, invite_code: nil, links_limit: nil, links_usage: nil, logo: nil, name: nil, partners_enabled: nil, payment_failed_at: nil, plan: nil, sales_limit: nil, sales_usage: nil, slug: nil, store: nil, stripe_connect_id: nil, stripe_id: nil, tags_limit: nil, usage: nil, usage_limit: nil, users: nil, users_limit: nil, flags: nil)
        @ai_limit = ai_limit
        @ai_usage = ai_usage
        @allowed_hostnames = allowed_hostnames
        @billing_cycle_start = billing_cycle_start
        @conversion_enabled = conversion_enabled
        @created_at = created_at
        @domains = domains
        @domains_limit = domains_limit
        @dot_link_claimed = dot_link_claimed
        @id = id
        @invite_code = invite_code
        @links_limit = links_limit
        @links_usage = links_usage
        @logo = logo
        @name = name
        @partners_enabled = partners_enabled
        @payment_failed_at = payment_failed_at
        @plan = plan
        @sales_limit = sales_limit
        @sales_usage = sales_usage
        @slug = slug
        @store = store
        @stripe_connect_id = stripe_connect_id
        @stripe_id = stripe_id
        @tags_limit = tags_limit
        @usage = usage
        @usage_limit = usage_limit
        @users = users
        @users_limit = users_limit
        @flags = flags
      end
    end
  end
end
