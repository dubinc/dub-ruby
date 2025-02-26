# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class RetrievePartnerAnalyticsRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The ID of the program to retrieve analytics for.
      field :program_id, ::String, { 'query_param': { 'field_name': 'programId', 'style': 'form', 'explode': true } }
      # The end date and time when to retrieve analytics from. If not provided, defaults to the current date. Takes precedence over `interval`.
      field :end_, T.nilable(::String), { 'query_param': { 'field_name': 'end', 'style': 'form', 'explode': true } }
      # The parameter to group the analytics data points by. Defaults to `count` if undefined.
      field :group_by, T.nilable(::OpenApiSDK::Operations::QueryParamGroupBy), { 'query_param': { 'field_name': 'groupBy', 'style': 'form', 'explode': true } }
      # The interval to retrieve analytics for. If undefined, defaults to 24h.
      field :interval, T.nilable(::OpenApiSDK::Operations::RetrievePartnerAnalyticsQueryParamInterval), { 'query_param': { 'field_name': 'interval', 'style': 'form', 'explode': true } }
      # The ID of the partner to retrieve analytics for.
      field :partner_id, T.nilable(::String), { 'query_param': { 'field_name': 'partnerId', 'style': 'form', 'explode': true } }
      # The start date and time when to retrieve analytics from. Takes precedence over `interval`.
      field :start, T.nilable(::String), { 'query_param': { 'field_name': 'start', 'style': 'form', 'explode': true } }
      # The ID of the tenant that created the link inside your system.
      field :tenant_id, T.nilable(::String), { 'query_param': { 'field_name': 'tenantId', 'style': 'form', 'explode': true } }
      # The IANA time zone code for aligning timeseries granularity (e.g. America/New_York). Defaults to UTC.
      field :timezone, T.nilable(::String), { 'query_param': { 'field_name': 'timezone', 'style': 'form', 'explode': true } }


      sig { params(program_id: ::String, end_: T.nilable(::String), group_by: T.nilable(::OpenApiSDK::Operations::QueryParamGroupBy), interval: T.nilable(::OpenApiSDK::Operations::RetrievePartnerAnalyticsQueryParamInterval), partner_id: T.nilable(::String), start: T.nilable(::String), tenant_id: T.nilable(::String), timezone: T.nilable(::String)).void }
      def initialize(program_id: nil, end_: nil, group_by: nil, interval: nil, partner_id: nil, start: nil, tenant_id: nil, timezone: nil)
        @program_id = program_id
        @end_ = end_
        @group_by = group_by
        @interval = interval
        @partner_id = partner_id
        @start = start
        @tenant_id = tenant_id
        @timezone = timezone
      end
    end
  end
end
