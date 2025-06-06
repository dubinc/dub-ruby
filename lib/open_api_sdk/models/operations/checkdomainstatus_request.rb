# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CheckDomainStatusRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The domains to search. We only support .link domains for now.
      field :domains, ::Object, { 'query_param': { 'field_name': 'domains', 'style': 'form', 'explode': false } }


      sig { params(domains: ::Object).void }
      def initialize(domains: nil)
        @domains = domains
      end
    end
  end
end
