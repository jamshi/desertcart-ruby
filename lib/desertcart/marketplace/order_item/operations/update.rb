# frozen_string_literal: true

module Desertcart
  module Marketplace
    class OrderItem
      module Operations
        class Update < Desertcart::Operation::Update
          class Contract < LedgerSync::Ledgers::Contract
            params do # rubocop:disable Metrics/BlockLength
              required(:ledger_id).filled(:string)
              optional(:name).maybe(:string)
              optional(:store_uid).maybe(:string)
              optional(:store_id).maybe(:integer)
              optional(:order_reference).maybe(:string)
              optional(:offer_reference).maybe(:string)
              optional(:merchant_id).maybe(:string)
              optional(:currency_code).maybe(:string)
              optional(:price).maybe(:integer)
              optional(:final_purchase_currency_code).maybe(:string)
              optional(:final_pruchase_price).maybe(:integer)
              optional(:title).maybe(:string)
              optional(:state).maybe(:string)
              optional(:marketplace_shipping_state).maybe(:string)
              optional(:reason_for_rejection).maybe(:string)
              optional(:checkin_condition).maybe(:string)
              optional(:shipment_movement_id).maybe(:integer)
              optional(:seller_reference_number).maybe(:string)
              optional(:seller_notes).maybe(:string)
              optional(:order_placed_at).maybe(:integer)
              optional(:acceptance_expiration_at).maybe(:integer)
              optional(:estimated_delivery_date).maybe(:string)
              optional(:accepted_at).maybe(:integer)
              optional(:purchase_order).maybe(:integer)
              optional(:shipping_address).maybe(:hash)
              optional(:note).maybe(:string)
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
