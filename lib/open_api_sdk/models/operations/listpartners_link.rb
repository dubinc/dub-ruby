# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class ListPartnersLink < ::Crystalline::FieldAugmented
      extend T::Sig

      # The number of clicks on the short link.
      field :clicks, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('clicks') } }
      # The domain of the short link. If not provided, the primary domain for the workspace will be used (or `dub.sh` if the workspace has no domains).
      field :domain, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('domain') } }
      # The unique ID of the short link.
      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The short link slug. If not provided, a random 7-character slug will be generated.
      field :key, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }
      # The number of leads the short links has generated.
      field :leads, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('leads') } }
      # The total dollar amount of sales the short links has generated (in cents).
      field :sale_amount, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('saleAmount') } }
      # The number of sales the short links has generated.
      field :sales, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('sales') } }
      # The full URL of the short link, including the https protocol (e.g. `https://dub.sh/try`).
      field :short_link, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('shortLink') } }
      # The destination URL of the short link.
      field :url, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('url') } }


      sig { params(clicks: ::Float, domain: ::String, id: ::String, key: ::String, leads: ::Float, sale_amount: ::Float, sales: ::Float, short_link: ::String, url: ::String).void }
      def initialize(clicks: nil, domain: nil, id: nil, key: nil, leads: nil, sale_amount: nil, sales: nil, short_link: nil, url: nil)
        @clicks = clicks
        @domain = domain
        @id = id
        @key = key
        @leads = leads
        @sale_amount = sale_amount
        @sales = sales
        @short_link = short_link
        @url = url
      end
    end
  end
end
