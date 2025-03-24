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
  class Partners
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::OpenApiSDK::Operations::CreatePartnerRequestBody), timeout_ms: T.nilable(Integer)).returns(::OpenApiSDK::Operations::CreatePartnerResponse) }
    def create(request, timeout_ms = nil)
      # create - Create a new partner
      # Create a new partner for a program. If partner exists, automatically enrolls them.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/partners"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type

      if form
        body = Utils.encode_form(form)
      elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
        body = URI.encode_www_form(data)
      else
        body = data
      end
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'createPartner',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.post(url) do |req|
          req.body = body
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::CreatePartnerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Operations::CreatePartnerResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::OpenApiSDK::Operations::CreatePartnerLinkRequestBody), timeout_ms: T.nilable(Integer)).returns(::OpenApiSDK::Operations::CreatePartnerLinkResponse) }
    def create_link(request, timeout_ms = nil)
      # create_link - Create a link for a partner
      # Create a new link for a partner that is enrolled in your program.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/partners/links"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type

      if form
        body = Utils.encode_form(form)
      elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
        body = URI.encode_www_form(data)
      else
        body = data
      end
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'createPartnerLink',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.post(url) do |req|
          req.body = body
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::CreatePartnerLinkResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::LinkSchema)
          res.link_schema = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::OpenApiSDK::Operations::UpsertPartnerLinkRequestBody), timeout_ms: T.nilable(Integer)).returns(::OpenApiSDK::Operations::UpsertPartnerLinkResponse) }
    def upsert_link(request, timeout_ms = nil)
      # upsert_link - Upsert a link for a partner
      # Upsert a link for a partner that is enrolled in your program. If a link with the same URL already exists, return it (or update it if there are any changes). Otherwise, a new link will be created.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/partners/links/upsert"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type

      if form
        body = Utils.encode_form(form)
      elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
        body = URI.encode_www_form(data)
      else
        body = data
      end
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'upsertPartnerLink',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.put(url) do |req|
          req.body = body
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::UpsertPartnerLinkResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::LinkSchema)
          res.link_schema = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::OpenApiSDK::Operations::RetrievePartnerAnalyticsRequest), timeout_ms: T.nilable(Integer)).returns(::OpenApiSDK::Operations::RetrievePartnerAnalyticsResponse) }
    def analytics(request, timeout_ms = nil)
      # analytics - Retrieve analytics for a partner
      # Retrieve analytics for a partner within a program. The response type vary based on the `groupBy` query parameter.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/partners/analytics"
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::RetrievePartnerAnalyticsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'retrievePartnerAnalytics',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.get(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          req.params = query_params
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::RetrievePartnerAnalyticsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::Object)
          res.one_of = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::OpenApiSDK::Operations::UpdatePartnerSaleRequestBody), timeout_ms: T.nilable(Integer)).returns(::OpenApiSDK::Operations::UpdatePartnerSaleResponse) }
    def update_sale(request, timeout_ms = nil)
      # update_sale - Update a sale for a partner.
      # Update an existing sale amount. This is useful for handling refunds (partial or full) or fraudulent sales.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/partners/sales"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type

      if form
        body = Utils.encode_form(form)
      elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
        body = URI.encode_www_form(data)
      else
        body = data
      end
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'updatePartnerSale',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.patch(url) do |req|
          req.body = body
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::UpdatePartnerSaleResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Operations::UpdatePartnerSaleResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end

      res
    end
  end
end
