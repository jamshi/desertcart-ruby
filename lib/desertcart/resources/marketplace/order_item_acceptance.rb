# frozen_string_literal: true

module Desertcart
  module Marketplace
    class OrderItemAcceptance < Desertcart::Resource
      references_one :order_item, to: Desertcart::Marketplace::OrderItem
      attribute :seller_reference_number, type: LedgerSync::Type::String
    end
  end
end
