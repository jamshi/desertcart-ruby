# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Movement
      module Operations
        class Create < Desertcart::Operation::Create
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:carrier).filled(:string)
              required(:tracking_number).filled(:string)
              required(:shipping_address_id).filled(:integer)
              required(:departed_at).filled(:integer)
              required(:estimated_arrival_at).filled(:integer)
              required(:order_items).filled(:hash, Types::Reference)
            end
          end

          def ledger_namespace_path
            'marketplace'
          end
        end
      end
    end
  end
end
