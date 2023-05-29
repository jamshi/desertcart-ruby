# frozen_string_literal: true

require_relative '../../../resources/marketplace/order_item'

module Desertcart
  module Marketplace
    class OrderItemRejection
      module Operations
        class Create < Desertcart::Operation::Create
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:order_item).maybe(:hash, Types::Reference)
              optional(:reason).maybe(:string)
            end
          end

          def deserialized_resource
            Desertcart::Marketplace::OrderItem::Deserializer.new.deserialize(
              hash: response.body['order_item'],
              resource: Desertcart::Marketplace::OrderItem.new
            )
          end
        end
      end
    end
  end
end
