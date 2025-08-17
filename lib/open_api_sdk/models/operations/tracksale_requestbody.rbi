# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Operations::TrackSaleRequestBody
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Operations::TrackSaleRequestBody
  def customer_external_id(); end
  def customer_external_id=(str_); end
  def amount(); end
  def amount=(str_); end
  def payment_processor(); end
  def payment_processor=(str_); end
  def currency(); end
  def currency=(str_); end
  def event_name(); end
  def event_name=(str_); end
  def metadata(); end
  def metadata=(str_); end
  def invoice_id(); end
  def invoice_id=(str_); end
  def lead_event_name(); end
  def lead_event_name=(str_); end
end