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

        def ledger_resource_type
          'shipping_address'
        end

        def ledger_resource_path
          ['shipping_addresses', resource.ledger_id].compact.join('/')
        end
      end
    end
  end
end
