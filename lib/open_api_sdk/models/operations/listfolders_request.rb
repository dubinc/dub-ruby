# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class ListFoldersRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The search term to filter the folders by.
      field :search, T.nilable(::String), { 'query_param': { 'field_name': 'search', 'style': 'form', 'explode': true } }


      sig { params(search: T.nilable(::String)).void }
      def initialize(search: nil)
        @search = search
      end
    end
  end
end
