# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'faraday/retry'
require 'sorbet-runtime'
require_relative 'sdk_hooks/hooks'
require_relative 'utils/retries'

module OpenApiSDK
  extend T::Sig

  class Dub
    extend T::Sig

    attr_accessor :links, :analytics, :events, :tags, :folders, :domains, :track, :customers, :partners, :workspaces, :embed_tokens, :qr_codes, :metatags

    sig do
      params(
        client: T.nilable(Faraday::Connection),
        retry_config: T.nilable(::OpenApiSDK::Utils::RetryConfig),
        timeout_ms: T.nilable(Integer),
        security: T.nilable(::OpenApiSDK::Shared::Security),
        security_source: T.nilable(T.proc.returns(::OpenApiSDK::Shared::Security)),
        server_idx: T.nilable(Integer),
        server_url: T.nilable(String),
        url_params: T.nilable(T::Hash[Symbol, String])
      ).void
    end
    def initialize(client: nil, retry_config: nil, timeout_ms: nil, security: nil, security_source: nil, server_idx: nil, server_url: nil, url_params: nil)
      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [T.nilable(Faraday::Connection)] client The faraday HTTP client to use for all operations
      # @param [T.nilable(::OpenApiSDK::Utils::RetryConfig)] retry_config The retry configuration to use for all operations
      # @param [T.nilable(Integer)] timeout_ms Request timeout in milliseconds for all operations
      # @param [T.nilable(::OpenApiSDK::Shared::Security)] security: The security details required for authentication
      # @param [T.proc.returns(T.nilable(::OpenApiSDK::Shared::Security))] security_source: A function that returns security details required for authentication
      # @param [T.nilable(::Integer)] server_idx The index of the server to use for all operations
      # @param [T.nilable(::String)] server_url The server URL to use for all operations
      # @param [T.nilable(::Hash<::Symbol, ::String>)] url_params Parameters to optionally template the server URL with

      connection_options = {
        request: {
          params_encoder: Faraday::FlatParamsEncoder
        }
      }
      connection_options[:request][:timeout] = (timeout_ms.to_f / 1000) unless timeout_ms.nil?

      client ||= Faraday.new(**connection_options) do |f|
        f.request :multipart, {}
        # f.response :logger, nil, { headers: true, bodies: true, errors: true }
      end

      if !server_url.nil?
        if !url_params.nil?
          server_url = Utils.template_url(server_url, url_params)
        end
      end

      server_idx = 0 if server_idx.nil?
      hooks = SDKHooks::Hooks.new
      @sdk_configuration = SDKConfiguration.new(
        client,
        hooks,
        retry_config,
        timeout_ms,
        security,
        security_source,
        server_url,
        server_idx
      )

      original_server_url = @sdk_configuration.get_server_details.first
      new_server_url, @sdk_configuration.client = hooks.sdk_init(base_url: original_server_url, client: client)
      @sdk_configuration.server_url = new_server_url if new_server_url != original_server_url

      init_sdks
    end

    sig { void }
    def init_sdks
      @links = Links.new(@sdk_configuration)
      @analytics = Analytics.new(@sdk_configuration)
      @events = Events.new(@sdk_configuration)
      @tags = Tags.new(@sdk_configuration)
      @folders = Folders.new(@sdk_configuration)
      @domains = Domains.new(@sdk_configuration)
      @track = Track.new(@sdk_configuration)
      @customers = Customers.new(@sdk_configuration)
      @partners = Partners.new(@sdk_configuration)
      @workspaces = Workspaces.new(@sdk_configuration)
      @embed_tokens = EmbedTokens.new(@sdk_configuration)
      @qr_codes = QRCodes.new(@sdk_configuration)
      @metatags = Metatags.new(@sdk_configuration)
    end
  end
end
