# frozen_string_literal: true

module Desertcart
  module Marketplace
    class OrderItemAcceptance
      class Serializer < Desertcart::Serializer
        attribute :order_item_id do |args = {}|
          resource = args.fetch(:resource)
          resource.order_item.ledger_id
        end
        attribute :seller_reference_number
        attribute :final_purchase_price
        attribute :final_purchase_currency_code
      end
    end
  end
end
