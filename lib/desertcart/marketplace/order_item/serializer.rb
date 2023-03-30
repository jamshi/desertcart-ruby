# frozen_string_literal: true

module Desertcart
  module Marketplace
    class OrderItem
      class Serializer < Desertcart::Serializer
        id
        attribute :name
        attribute :store_uid
        attribute :store_id
        attribute :purchase_link
        attribute :order_reference
        attribute :offer_reference
        attribute :merchant_id
        attribute :currency_code
        attribute :price
        attribute :final_purchase_currency_code
        attribute :final_purchase_price
        attribute :title
        attribute :state
        attribute :marketplace_shipping_state
        attribute :reason_for_rejection
        attribute :checkin_condition
        attribute :shipment_movement_id
        attribute :seller_reference_number
        attribute :seller_notes
        attribute :order_placed_at
        attribute :acceptance_expiration_at
        attribute :estimated_delivery_date
        attribute :accepted_at
        attribute :purchase_order
        attribute :shipping_address
        attribute :note
      end
    end
  end
end
