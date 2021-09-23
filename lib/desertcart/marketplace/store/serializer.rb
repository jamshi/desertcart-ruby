# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Store
      class Serializer < Desertcart::Serializer
        id
        attribute :name
      end
    end
  end
end
