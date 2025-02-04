# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # Additional properties that you can pass to the partner's short link. Will be used to override the default link properties for this partner.
    class CreatePartnerLinkLinkProps < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The Android destination URL for the short link for Android device targeting.
      field :android, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('android') } }
      # Whether the short link is archived. Defaults to `false` if not provided.
      field :archived, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('archived') } }
      # The comments for the short link.
      field :comments, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('comments') } }
      # The custom link preview description (og:description). Will be used for Custom Social Media Cards if `proxy` is true. Learn more: https://d.to/og
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # Allow search engines to index your short link. Defaults to `false` if not provided. Learn more: https://d.to/noindex
      field :do_index, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('doIndex') } }
      # The URL to redirect to when the short link has expired.
      field :expired_url, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('expiredUrl') } }
      # The date and time when the short link will expire at.
      field :expires_at, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('expiresAt') } }
      # The ID of the link in your database. If set, it can be used to identify the link in future API requests (must be prefixed with 'ext_' when passed as a query parameter). This key is unique across your workspace.
      field :external_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('externalId') } }
      # The custom link preview image (og:image). Will be used for Custom Social Media Cards if `proxy` is true. Learn more: https://d.to/og
      field :image, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('image') } }
      # The iOS destination URL for the short link for iOS device targeting.
      field :ios, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ios') } }
      # The ID of the partner the short link is associated with.
      field :partner_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('partnerId') } }
      # The password required to access the destination URL of the short link.
      field :password, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('password') } }
      # The prefix of the short link slug for randomly-generated keys (e.g. if prefix is `/c/`, generated keys will be in the `/c/:key` format). Will be ignored if `key` is provided.
      field :prefix, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('prefix') } }
      # Whether the short link uses Custom Social Media Cards feature. Defaults to `false` if not provided.
      field :proxy, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('proxy') } }
      # The referral tag of the short link. If set, this will populate or override the `ref` query parameter in the destination URL.
      field :ref, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ref') } }
      # Whether the short link uses link cloaking. Defaults to `false` if not provided.
      field :rewrite, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('rewrite') } }
      # The unique IDs of the tags assigned to the short link.
      field :tag_ids, T.nilable(::Object), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tagIds') } }
      # The unique name of the tags assigned to the short link (case insensitive).
      field :tag_names, T.nilable(::Object), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tagNames') } }
      # The ID of the tenant that created the link inside your system. If set, it can be used to fetch all links for a tenant.
      field :tenant_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tenantId') } }
      # The custom link preview title (og:title). Will be used for Custom Social Media Cards if `proxy` is true. Learn more: https://d.to/og
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }
      # The UTM campaign of the short link. If set, this will populate or override the UTM campaign in the destination URL.
      field :utm_campaign, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('utm_campaign') } }
      # The UTM content of the short link. If set, this will populate or override the UTM content in the destination URL.
      field :utm_content, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('utm_content') } }
      # The UTM medium of the short link. If set, this will populate or override the UTM medium in the destination URL.
      field :utm_medium, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('utm_medium') } }
      # The UTM source of the short link. If set, this will populate or override the UTM source in the destination URL.
      field :utm_source, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('utm_source') } }
      # The UTM term of the short link. If set, this will populate or override the UTM term in the destination URL.
      field :utm_term, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('utm_term') } }
      # The custom link preview video (og:video). Will be used for Custom Social Media Cards if `proxy` is true. Learn more: https://d.to/og
      field :video, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('video') } }


      sig { params(android: T.nilable(::String), archived: T.nilable(T::Boolean), comments: T.nilable(::String), description: T.nilable(::String), do_index: T.nilable(T::Boolean), expired_url: T.nilable(::String), expires_at: T.nilable(::String), external_id: T.nilable(::String), image: T.nilable(::String), ios: T.nilable(::String), partner_id: T.nilable(::String), password: T.nilable(::String), prefix: T.nilable(::String), proxy: T.nilable(T::Boolean), ref: T.nilable(::String), rewrite: T.nilable(T::Boolean), tag_ids: T.nilable(::Object), tag_names: T.nilable(::Object), tenant_id: T.nilable(::String), title: T.nilable(::String), utm_campaign: T.nilable(::String), utm_content: T.nilable(::String), utm_medium: T.nilable(::String), utm_source: T.nilable(::String), utm_term: T.nilable(::String), video: T.nilable(::String)).void }
      def initialize(android: nil, archived: nil, comments: nil, description: nil, do_index: nil, expired_url: nil, expires_at: nil, external_id: nil, image: nil, ios: nil, partner_id: nil, password: nil, prefix: nil, proxy: nil, ref: nil, rewrite: nil, tag_ids: nil, tag_names: nil, tenant_id: nil, title: nil, utm_campaign: nil, utm_content: nil, utm_medium: nil, utm_source: nil, utm_term: nil, video: nil)
        @android = android
        @archived = archived
        @comments = comments
        @description = description
        @do_index = do_index
        @expired_url = expired_url
        @expires_at = expires_at
        @external_id = external_id
        @image = image
        @ios = ios
        @partner_id = partner_id
        @password = password
        @prefix = prefix
        @proxy = proxy
        @ref = ref
        @rewrite = rewrite
        @tag_ids = tag_ids
        @tag_names = tag_names
        @tenant_id = tenant_id
        @title = title
        @utm_campaign = utm_campaign
        @utm_content = utm_content
        @utm_medium = utm_medium
        @utm_source = utm_source
        @utm_term = utm_term
        @video = video
      end
    end
  end
end
