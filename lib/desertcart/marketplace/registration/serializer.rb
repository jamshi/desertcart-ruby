# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Registration
      class Serializer < Desertcart::Serializer
        attribute :name
        attribute :url
        attribute :country_code
      end
    end
  end
end
