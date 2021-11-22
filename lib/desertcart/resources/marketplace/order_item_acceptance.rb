# frozen_string_literal: true

require_relative 'order_item'

module Desertcart
  module Marketplace
    class OrderItemAcceptance < Desertcart::Resource
      references_one :order_item, to: Desertcart::Marketplace::OrderItem
      attribute :seller_reference_number, type: LedgerSync::Type::String
      attribute :final_purchase_price, type: LedgerSync::Type::Integer
      attribute :final_purchase_currency_code, type: LedgerSync::Type::String
    end
  end
end
