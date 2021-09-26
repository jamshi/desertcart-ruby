# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Movement
      module Operations
        class Update < Desertcart::Operation::Update
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:ledger_id).filled(:string)
              required(:estimated_arrival_at).filled(:integer)
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
