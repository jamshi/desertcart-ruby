# frozen_string_literal: true

module Desertcart
  module Marketplace
    class OrderItemRejection < Desertcart::Resource
      references_one :order_item, to: Desertcart::Marketplace::OrderItem
      attribute :reason, type: LedgerSync::Type::String
    end
  end
end
