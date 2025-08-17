# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Operations::RetrievePartnerAnalyticsRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Operations::RetrievePartnerAnalyticsRequest
  def partner_id(); end
  def partner_id=(str_); end
  def tenant_id(); end
  def tenant_id=(str_); end
  def interval(); end
  def interval=(str_); end
  def start(); end
  def start=(str_); end
  def end_(); end
  def end_=(str_); end
  def query(); end
  def query=(str_); end
  def timezone(); end
  def timezone=(str_); end
  def group_by(); end
  def group_by=(str_); end
end