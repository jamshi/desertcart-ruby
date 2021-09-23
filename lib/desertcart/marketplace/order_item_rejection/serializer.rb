# frozen_string_literal: true

module Desertcart
  module Marketplace
    class OrderItemRejection
      class Serializer < Desertcart::Serializer
        attribute :order_item_id do |args = {}|
          resource = args.fetch(:resource)
          resource.order_item.ledger_id
        end
        attribute :reason
      end
    end
  end
end
