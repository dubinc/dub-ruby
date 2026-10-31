# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Operations::ListMessagesRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Operations::ListMessagesRequest
  def partner_id(); end
  def partner_id=(str_); end
  def tenant_id(); end
  def tenant_id=(str_); end
  def source_type(); end
  def source_type=(str_); end
  def unread(); end
  def unread=(str_); end
  def ending_before(); end
  def ending_before=(str_); end
  def starting_after(); end
  def starting_after=(str_); end
  def page_size(); end
  def page_size=(str_); end
end
