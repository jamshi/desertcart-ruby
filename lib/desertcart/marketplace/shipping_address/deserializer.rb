# frozen_string_literal: true

module Desertcart
  module Marketplace
    class ShippingAddress
      class Deserializer < Desertcart::Deserializer
        attribute :ledger_id, hash_attribute: 'shipping_address_id'
        attribute :name
        attribute 'address_line_1'
        attribute 'address_line_2'
        attribute :city
        attribute :state
        attribute :zip_code
        attribute :country
      end
    end
  end
end
