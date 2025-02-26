# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreateTagRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # The color of the tag. If not provided, a random color will be used from the list: red, yellow, green, blue, purple, pink, brown.
      field :color, T.nilable(::OpenApiSDK::Operations::Color), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('color'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::Color, true) } }
      # The name of the tag to create.
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # The name of the tag to create.
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :tag, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tag') } }


      sig { params(color: T.nilable(::OpenApiSDK::Operations::Color), name: T.nilable(::String), tag: T.nilable(::String)).void }
      def initialize(color: nil, name: nil, tag: nil)
        @color = color
        @name = name
        @tag = tag
      end
    end
  end
end
