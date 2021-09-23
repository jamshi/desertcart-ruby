# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Movement
      class Deserializer < Desertcart::Deserializer
        id
        attribute :carrier
        attribute :tracking_number
        attribute :departed_at
        attribute :estimated_arrival_at
      end
    end
  end
end
