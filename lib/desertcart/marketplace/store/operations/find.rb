# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Store
      module Operations
        class Find < Desertcart::Operation::Find
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:external_id).maybe(:string)
              required(:ledger_id).filled(:string)
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
