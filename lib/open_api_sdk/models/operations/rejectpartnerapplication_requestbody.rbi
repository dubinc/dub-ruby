# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Operations::RejectPartnerApplicationRequestBody
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Operations::RejectPartnerApplicationRequestBody
  def partner_id(); end
  def partner_id=(str_); end
  def rejection_reason(); end
  def rejection_reason=(str_); end
  def rejection_note(); end
  def rejection_note=(str_); end
  def flag_for_fraud(); end
  def flag_for_fraud=(str_); end
  def flag_for_fraud_reason(); end
  def flag_for_fraud_reason=(str_); end
  def reapplication_timeframe(); end
  def reapplication_timeframe=(str_); end
end
