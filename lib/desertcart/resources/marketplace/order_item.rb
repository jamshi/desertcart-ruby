# frozen_string_literal: true

require_relative 'shipping_address'

module Desertcart
  module Marketplace
    class OrderItem < Desertcart::Resource
      attribute :name, type: LedgerSync::Type::String
      attribute :store_uid, type: LedgerSync::Type::String
      attribute :store_id, type: LedgerSync::Type::Integer
      attribute :order_reference, type: LedgerSync::Type::String
      attribute :offer_reference, type: LedgerSync::Type::String
      attribute :merchant_id, type: LedgerSync::Type::String
      attribute :currency_code, type: LedgerSync::Type::String
      attribute :price, type: LedgerSync::Type::Integer
      attribute :final_purchase_currency_code, type: LedgerSync::Type::String
      attribute :final_purchase_price, type: LedgerSync::Type::Integer
      attribute :title, type: LedgerSync::Type::String
      attribute :state, type: LedgerSync::Type::String
      attribute :marketplace_shipping_state, type: LedgerSync::Type::String
      attribute :reason_for_rejection, type: LedgerSync::Type::String
      attribute :checkin_condition, type: LedgerSync::Type::String
      attribute :shipment_movement_id, type: LedgerSync::Type::Integer
      attribute :seller_reference_number, type: LedgerSync::Type::String
      attribute :seller_notes, type: LedgerSync::Type::String
      attribute :order_placed_at, type: LedgerSync::Type::Integer
      attribute :acceptance_expiration_at, type: LedgerSync::Type::Integer
      attribute :estimated_delivery_date, type: LedgerSync::Type::String
      attribute :accepted_at, type: LedgerSync::Type::Integer
      attribute :purchase_order, type: LedgerSync::Type::String
      attribute :note, type: LedgerSync::Type::String
      references_one :shipping_address,
                     to: Desertcart::Marketplace::ShippingAddress
    end
  end
end
