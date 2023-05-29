# frozen_string_literal: true

require_relative '../../../resources/marketplace/order_item'

module Desertcart
  module Marketplace
    class OrderItemAcceptance
      module Operations
        class Create < Desertcart::Operation::Create
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:order_item).maybe(:hash, Types::Reference)
              optional(:seller_reference_number).maybe(:string)
              optional(:final_purchase_price).maybe(:integer)
              optional(:final_purchase_currency_code).maybe(:string)
            end
          end

          def ledger_namespace_path
            'marketplace'
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
