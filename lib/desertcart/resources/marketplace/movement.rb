# frozen_string_literal: true

require_relative 'order_item'

module Desertcart
  module Marketplace
    class Movement < Desertcart::Resource
      attribute :carrier, type: LedgerSync::Type::String
      attribute :tracking_number, type: LedgerSync::Type::String
      attribute :shipping_address_id, type: LedgerSync::Type::Integer
      attribute :departed_at, type: LedgerSync::Type::Integer
      attribute :estimated_arrival_at, type: LedgerSync::Type::Integer
      references_many :order_items, to: Desertcart::Marketplace::OrderItem
    end
  end
end
