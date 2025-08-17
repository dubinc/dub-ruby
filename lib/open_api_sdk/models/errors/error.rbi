# typed: true
# frozen_string_literal: true


class OpenApiSDK::Models::Errors::Error
  extend ::Crystalline::MetadataFields::ClassMethods
end


class OpenApiSDK::Models::Errors::Error
  def code(); end
  def code=(str_); end
  def message(); end
  def message=(str_); end
  def doc_url(); end
  def doc_url=(str_); end
end