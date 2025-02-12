# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class RetrieveAnalyticsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The browser to retrieve analytics for.
      field :browser, T.nilable(::String), { 'query_param': { 'field_name': 'browser', 'style': 'form', 'explode': true } }
      # The city to retrieve analytics for.
      field :city, T.nilable(::String), { 'query_param': { 'field_name': 'city', 'style': 'form', 'explode': true } }
      # The continent to retrieve analytics for.
      field :continent, T.nilable(::OpenApiSDK::Shared::ContinentCode), { 'query_param': { 'field_name': 'continent', 'style': 'form', 'explode': true } }
      # The country to retrieve analytics for.
      field :country, T.nilable(::OpenApiSDK::Shared::CountryCode), { 'query_param': { 'field_name': 'country', 'style': 'form', 'explode': true } }
      # The device to retrieve analytics for.
      field :device, T.nilable(::String), { 'query_param': { 'field_name': 'device', 'style': 'form', 'explode': true } }
      # The domain to filter analytics for.
      field :domain, T.nilable(::String), { 'query_param': { 'field_name': 'domain', 'style': 'form', 'explode': true } }
      # The end date and time when to retrieve analytics from. If not provided, defaults to the current date. Takes precedence over `interval`.
      field :end_, T.nilable(::String), { 'query_param': { 'field_name': 'end', 'style': 'form', 'explode': true } }
      # The type of event to retrieve analytics for. Defaults to `clicks`.
      field :event, T.nilable(::OpenApiSDK::Operations::Event), { 'query_param': { 'field_name': 'event', 'style': 'form', 'explode': true } }
      # This is the ID of the link in the your database. Must be prefixed with 'ext_' when passed as a query parameter.
      field :external_id, T.nilable(::String), { 'query_param': { 'field_name': 'externalId', 'style': 'form', 'explode': true } }
      # The folder ID to retrieve analytics for. If not provided, return analytics for unsorted links.
      field :folder_id, T.nilable(::String), { 'query_param': { 'field_name': 'folderId', 'style': 'form', 'explode': true } }
      # The parameter to group the analytics data points by. Defaults to `count` if undefined.
      field :group_by, T.nilable(::OpenApiSDK::Operations::GroupBy), { 'query_param': { 'field_name': 'groupBy', 'style': 'form', 'explode': true } }
      # The interval to retrieve analytics for. If undefined, defaults to 24h.
      field :interval, T.nilable(::OpenApiSDK::Operations::Interval), { 'query_param': { 'field_name': 'interval', 'style': 'form', 'explode': true } }
      # The short link slug.
      field :key, T.nilable(::String), { 'query_param': { 'field_name': 'key', 'style': 'form', 'explode': true } }
      # The unique ID of the short link on Dub.
      field :link_id, T.nilable(::String), { 'query_param': { 'field_name': 'linkId', 'style': 'form', 'explode': true } }
      # The OS to retrieve analytics for.
      field :os, T.nilable(::String), { 'query_param': { 'field_name': 'os', 'style': 'form', 'explode': true } }
      # The ID of the partner to retrieve analytics for.
      field :partner_id, T.nilable(::String), { 'query_param': { 'field_name': 'partnerId', 'style': 'form', 'explode': true } }
      # The ID of the program to retrieve analytics for.
      field :program_id, T.nilable(::String), { 'query_param': { 'field_name': 'programId', 'style': 'form', 'explode': true } }
      # Deprecated. Use the `trigger` field instead. Filter for QR code scans. If true, filter for QR codes only. If false, filter for links only. If undefined, return both.
      field :qr, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'qr', 'style': 'form', 'explode': true } }
      # The referer to retrieve analytics for.
      field :referer, T.nilable(::String), { 'query_param': { 'field_name': 'referer', 'style': 'form', 'explode': true } }
      # The full referer URL to retrieve analytics for.
      field :referer_url, T.nilable(::String), { 'query_param': { 'field_name': 'refererUrl', 'style': 'form', 'explode': true } }
      # The ISO 3166-2 region code to retrieve analytics for.
      field :region, T.nilable(::String), { 'query_param': { 'field_name': 'region', 'style': 'form', 'explode': true } }
      # Filter for root domains. If true, filter for domains only. If false, filter for links only. If undefined, return both.
      field :root, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'root', 'style': 'form', 'explode': true } }
      # The start date and time when to retrieve analytics from. Takes precedence over `interval`.
      field :start, T.nilable(::String), { 'query_param': { 'field_name': 'start', 'style': 'form', 'explode': true } }
      # Deprecated. Use `tagIds` instead. The tag ID to retrieve analytics for.
      field :tag_id, T.nilable(::String), { 'query_param': { 'field_name': 'tagId', 'style': 'form', 'explode': true } }
      # The tag IDs to retrieve analytics for.
      field :tag_ids, T.nilable(::Object), { 'query_param': { 'field_name': 'tagIds', 'style': 'form', 'explode': true } }
      # The ID of the tenant that created the link inside your system.
      field :tenant_id, T.nilable(::String), { 'query_param': { 'field_name': 'tenantId', 'style': 'form', 'explode': true } }
      # The IANA time zone code for aligning timeseries granularity (e.g. America/New_York). Defaults to UTC.
      field :timezone, T.nilable(::String), { 'query_param': { 'field_name': 'timezone', 'style': 'form', 'explode': true } }
      # The trigger to retrieve analytics for. If undefined, return both QR and link clicks.
      field :trigger, T.nilable(::OpenApiSDK::Operations::Trigger), { 'query_param': { 'field_name': 'trigger', 'style': 'form', 'explode': true } }
      # The URL to retrieve analytics for.
      field :url, T.nilable(::String), { 'query_param': { 'field_name': 'url', 'style': 'form', 'explode': true } }
      # The UTM campaign of the short link.
      field :utm_campaign, T.nilable(::String), { 'query_param': { 'field_name': 'utm_campaign', 'style': 'form', 'explode': true } }
      # The UTM content of the short link.
      field :utm_content, T.nilable(::String), { 'query_param': { 'field_name': 'utm_content', 'style': 'form', 'explode': true } }
      # The UTM medium of the short link.
      field :utm_medium, T.nilable(::String), { 'query_param': { 'field_name': 'utm_medium', 'style': 'form', 'explode': true } }
      # The UTM source of the short link.
      field :utm_source, T.nilable(::String), { 'query_param': { 'field_name': 'utm_source', 'style': 'form', 'explode': true } }
      # The UTM term of the short link.
      field :utm_term, T.nilable(::String), { 'query_param': { 'field_name': 'utm_term', 'style': 'form', 'explode': true } }


      sig { params(browser: T.nilable(::String), city: T.nilable(::String), continent: T.nilable(::OpenApiSDK::Shared::ContinentCode), country: T.nilable(::OpenApiSDK::Shared::CountryCode), device: T.nilable(::String), domain: T.nilable(::String), end_: T.nilable(::String), event: T.nilable(::OpenApiSDK::Operations::Event), external_id: T.nilable(::String), folder_id: T.nilable(::String), group_by: T.nilable(::OpenApiSDK::Operations::GroupBy), interval: T.nilable(::OpenApiSDK::Operations::Interval), key: T.nilable(::String), link_id: T.nilable(::String), os: T.nilable(::String), partner_id: T.nilable(::String), program_id: T.nilable(::String), qr: T.nilable(T::Boolean), referer: T.nilable(::String), referer_url: T.nilable(::String), region: T.nilable(::String), root: T.nilable(T::Boolean), start: T.nilable(::String), tag_id: T.nilable(::String), tag_ids: T.nilable(::Object), tenant_id: T.nilable(::String), timezone: T.nilable(::String), trigger: T.nilable(::OpenApiSDK::Operations::Trigger), url: T.nilable(::String), utm_campaign: T.nilable(::String), utm_content: T.nilable(::String), utm_medium: T.nilable(::String), utm_source: T.nilable(::String), utm_term: T.nilable(::String)).void }
      def initialize(browser: nil, city: nil, continent: nil, country: nil, device: nil, domain: nil, end_: nil, event: nil, external_id: nil, folder_id: nil, group_by: nil, interval: nil, key: nil, link_id: nil, os: nil, partner_id: nil, program_id: nil, qr: nil, referer: nil, referer_url: nil, region: nil, root: nil, start: nil, tag_id: nil, tag_ids: nil, tenant_id: nil, timezone: nil, trigger: nil, url: nil, utm_campaign: nil, utm_content: nil, utm_medium: nil, utm_source: nil, utm_term: nil)
        @browser = browser
        @city = city
        @continent = continent
        @country = country
        @device = device
        @domain = domain
        @end_ = end_
        @event = event
        @external_id = external_id
        @folder_id = folder_id
        @group_by = group_by
        @interval = interval
        @key = key
        @link_id = link_id
        @os = os
        @partner_id = partner_id
        @program_id = program_id
        @qr = qr
        @referer = referer
        @referer_url = referer_url
        @region = region
        @root = root
        @start = start
        @tag_id = tag_id
        @tag_ids = tag_ids
        @tenant_id = tenant_id
        @timezone = timezone
        @trigger = trigger
        @url = url
        @utm_campaign = utm_campaign
        @utm_content = utm_content
        @utm_medium = utm_medium
        @utm_source = utm_source
        @utm_term = utm_term
      end
    end
  end
end
