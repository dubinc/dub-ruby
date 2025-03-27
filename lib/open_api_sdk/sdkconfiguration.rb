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

  SERVERS = [
    'https://api.dub.co', # 1 - Production API
  ].freeze
  # Contains the list of servers available to the SDK

  class SDKConfiguration < ::Crystalline::FieldAugmented
    extend T::Sig

    field :client, T.nilable(Faraday::Connection)
    field :hooks, ::OpenApiSDK::SDKHooks::Hooks
    field :retry_config, T.nilable(::OpenApiSDK::Utils::RetryConfig)
    field :timeout, T.nilable(Float)
    field :security_source, T.nilable(T.proc.returns(T.nilable(::OpenApiSDK::Shared::Security)))
    field :server_url, T.nilable(String)
    field :server_idx, T.nilable(Integer)
    field :language, String
    field :openapi_doc_version, String
    field :sdk_version, String
    field :gen_version, String
    field :user_agent, String

    sig do
      params(
        client: T.nilable(Faraday::Connection),
        hooks: ::OpenApiSDK::SDKHooks::Hooks,
        retry_config: T.nilable(::OpenApiSDK::Utils::RetryConfig),
        timeout_ms: T.nilable(Integer),
        security: T.nilable(::OpenApiSDK::Shared::Security),
        security_source: T.nilable(T.proc.returns(::OpenApiSDK::Shared::Security)),
        server_url: T.nilable(String),
        server_idx: T.nilable(Integer)
      ).void
    end
    def initialize(client, hooks, retry_config, timeout_ms, security, security_source, server_url, server_idx)
      @client = client
      @hooks = hooks
      @retry_config = retry_config
      @server_url = server_url
      @timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      @server_idx = server_idx.nil? ? 0 : server_idx
      raise StandardError, "Invalid server index #{server_idx}" if @server_idx.negative? || @server_idx >= SERVERS.length
      if !security_source.nil?
        @security_source = security_source
      elsif !security.nil?
        @security_source = -> { security }
      end
      @language = 'ruby'
      @openapi_doc_version = '0.0.1'
      @sdk_version = '0.2.2-alpha.81'
      @gen_version = '2.562.2'
      @user_agent = 'speakeasy-sdk/ruby 0.2.2-alpha.81 2.562.2 0.0.1 dub'
    end

    sig { returns([String, T::Hash[Symbol, String]]) }
    def get_server_details
      return [@server_url.delete_suffix('/'), {}] if !@server_url.nil?
      [SERVERS[@server_idx], {}]
    end
  end
end
