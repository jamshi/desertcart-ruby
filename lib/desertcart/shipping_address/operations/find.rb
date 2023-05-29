# frozen_string_literal: true

module Desertcart
  class ShippingAddress
    module Operations
      class Find < Desertcart::Operation::Find
        class Contract < LedgerSync::Ledgers::Contract
          params do
            required(:ledger_id).filled(:string)
          end
        end
      end
    end
  end
end
