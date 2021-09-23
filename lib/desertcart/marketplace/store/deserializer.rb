# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Store
      class Deserializer < Desertcart::Deserializer
        id
        attribute :name
      end
    end
  end
end
