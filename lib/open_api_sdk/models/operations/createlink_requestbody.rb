# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreateLinkRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The destination URL of the short link.
      field :url, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('url') } }
      # The Android destination URL for the short link for Android device targeting.
      field :android, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('android') } }
      # Whether the short link is archived.
      field :archived, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('archived') } }
      # The comments for the short link.
      field :comments, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('comments') } }
      # The custom link preview description (og:description). Will be used for Custom Social Media Cards if `proxy` is true. Learn more: https://d.to/og
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # Allow search engines to index your short link. Defaults to `false` if not provided. Learn more: https://d.to/noindex
      field :do_index, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('doIndex') } }
      # The domain of the short link. If not provided, the primary domain for the workspace will be used (or `dub.sh` if the workspace has no domains).
      field :domain, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('domain') } }
      # The URL to redirect to when the short link has expired.
      field :expired_url, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('expiredUrl') } }
      # The date and time when the short link will expire at.
      field :expires_at, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('expiresAt') } }
      # This is the ID of the link in your database. If set, it can be used to identify the link in the future. Must be prefixed with `ext_` when passed as a query parameter.
      field :external_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('externalId') } }
      # Geo targeting information for the short link in JSON format `{[COUNTRY]: https://example.com }`.
      field :geo, T.nilable(::OpenApiSDK::Shared::LinkGeoTargeting), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('geo') } }
      # The identifier of the short link that is unique across your workspace. If set, it can be used to identify your short link for client-side click tracking.
      field :identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('identifier') } }
      # The custom link preview image (og:image). Will be used for Custom Social Media Cards if `proxy` is true. Learn more: https://d.to/og
      field :image, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('image') } }
      # The iOS destination URL for the short link for iOS device targeting.
      field :ios, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ios') } }
      # The short link slug. If not provided, a random 7-character slug will be generated.
      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }
      # The password required to access the destination URL of the short link.
      field :password, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('password') } }
      # The prefix of the short link slug for randomly-generated keys (e.g. if prefix is `/c/`, generated keys will be in the `/c/:key` format). Will be ignored if `key` is provided.
      field :prefix, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('prefix') } }
      # Whether the short link uses Custom Social Media Cards feature.
      field :proxy, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('proxy') } }
      # Deprecated: Use `dashboard` instead. Whether the short link's stats are publicly accessible.
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :public_stats, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('publicStats') } }
      # The referral tag of the short link. If set, this will populate or override the `ref` query parameter in the destination URL.
      field :ref, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ref') } }
      # Whether the short link uses link cloaking.
      field :rewrite, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('rewrite') } }
      # The unique ID of the tag assigned to the short link. This field is deprecated – use `tagIds` instead.
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :tag_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tagId') } }
      # The unique IDs of the tags assigned to the short link.
      field :tag_ids, T.nilable(::Object), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tagIds') } }
      # The unique name of the tags assigned to the short link (case insensitive).
      field :tag_names, T.nilable(::Object), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tagNames') } }
      # The custom link preview title (og:title). Will be used for Custom Social Media Cards if `proxy` is true. Learn more: https://d.to/og
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }
      # Whether to track conversions for the short link.
      field :track_conversion, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('trackConversion') } }
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
      # An array of webhook IDs to trigger when the link is clicked. These webhooks will receive click event data.
      field :webhook_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('webhookIds') } }


      sig { params(url: ::String, android: T.nilable(::String), archived: T.nilable(T::Boolean), comments: T.nilable(::String), description: T.nilable(::String), do_index: T.nilable(T::Boolean), domain: T.nilable(::String), expired_url: T.nilable(::String), expires_at: T.nilable(::String), external_id: T.nilable(::String), geo: T.nilable(::OpenApiSDK::Shared::LinkGeoTargeting), identifier: T.nilable(::String), image: T.nilable(::String), ios: T.nilable(::String), key: T.nilable(::String), password: T.nilable(::String), prefix: T.nilable(::String), proxy: T.nilable(T::Boolean), public_stats: T.nilable(T::Boolean), ref: T.nilable(::String), rewrite: T.nilable(T::Boolean), tag_id: T.nilable(::String), tag_ids: T.nilable(::Object), tag_names: T.nilable(::Object), title: T.nilable(::String), track_conversion: T.nilable(T::Boolean), utm_campaign: T.nilable(::String), utm_content: T.nilable(::String), utm_medium: T.nilable(::String), utm_source: T.nilable(::String), utm_term: T.nilable(::String), video: T.nilable(::String), webhook_ids: T.nilable(T::Array[::String])).void }
      def initialize(url: nil, android: nil, archived: nil, comments: nil, description: nil, do_index: nil, domain: nil, expired_url: nil, expires_at: nil, external_id: nil, geo: nil, identifier: nil, image: nil, ios: nil, key: nil, password: nil, prefix: nil, proxy: nil, public_stats: nil, ref: nil, rewrite: nil, tag_id: nil, tag_ids: nil, tag_names: nil, title: nil, track_conversion: nil, utm_campaign: nil, utm_content: nil, utm_medium: nil, utm_source: nil, utm_term: nil, video: nil, webhook_ids: nil)
        @url = url
        @android = android
        @archived = archived
        @comments = comments
        @description = description
        @do_index = do_index
        @domain = domain
        @expired_url = expired_url
        @expires_at = expires_at
        @external_id = external_id
        @geo = geo
        @identifier = identifier
        @image = image
        @ios = ios
        @key = key
        @password = password
        @prefix = prefix
        @proxy = proxy
        @public_stats = public_stats
        @ref = ref
        @rewrite = rewrite
        @tag_id = tag_id
        @tag_ids = tag_ids
        @tag_names = tag_names
        @title = title
        @track_conversion = track_conversion
        @utm_campaign = utm_campaign
        @utm_content = utm_content
        @utm_medium = utm_medium
        @utm_source = utm_source
        @utm_term = utm_term
        @video = video
        @webhook_ids = webhook_ids
      end
    end
  end
end
