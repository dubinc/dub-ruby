# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Operations::ListPayoutsRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Operations::ListPayoutsRequest
  def status(); end
  def status=(str_); end
  def partner_id(); end
  def partner_id=(str_); end
  def tenant_id(); end
  def tenant_id=(str_); end
  def invoice_id(); end
  def invoice_id=(str_); end
  def sort_by(); end
  def sort_by=(str_); end
  def sort_order(); end
  def sort_order=(str_); end
  def page(); end
  def page=(str_); end
  def page_size(); end
  def page_size=(str_); end
end