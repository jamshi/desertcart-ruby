# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Movement
      class Serializer < Desertcart::Serializer
        id
        attribute :carrier
        attribute :tracking_number
        attribute :shipping_address_id
        attribute :departed_at
        attribute :estimated_arrival_at
        attribute :order_item_ids do |args = {}|
          resource = args.fetch(:resource)
          resource.order_items.map(&:ledger_id)
        end
      end
    end
  end
end
