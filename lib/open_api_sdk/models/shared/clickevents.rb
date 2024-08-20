# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class ClickEvents < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :browser, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('browser') } }

      field :city, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('city') } }

      field :click_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('click_id') } }

      field :continent, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('continent') } }

      field :country, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('country') } }

      field :device, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('device') } }

      field :domain, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('domain') } }

      field :ip, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ip') } }

      field :key, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }

      field :link_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('link_id') } }

      field :os, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('os') } }

      field :qr, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('qr') } }

      field :referer, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('referer') } }

      field :timestamp, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('timestamp') } }

      field :url, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('url') } }


      sig { params(browser: ::String, city: ::String, click_id: ::String, continent: ::String, country: ::String, device: ::String, domain: ::String, ip: ::String, key: ::String, link_id: ::String, os: ::String, qr: ::Float, referer: ::String, timestamp: ::String, url: ::String).void }
      def initialize(browser: nil, city: nil, click_id: nil, continent: nil, country: nil, device: nil, domain: nil, ip: nil, key: nil, link_id: nil, os: nil, qr: nil, referer: nil, timestamp: nil, url: nil)
        @browser = browser
        @city = city
        @click_id = click_id
        @continent = continent
        @country = country
        @device = device
        @domain = domain
        @ip = ip
        @key = key
        @link_id = link_id
        @os = os
        @qr = qr
        @referer = referer
        @timestamp = timestamp
        @url = url
      end
    end
  end
end