# frozen_string_literal: true

require_relative '../../../resources/authentication_token'

module Desertcart
  module Marketplace
    class Registration
      module Operations
        class Create < Desertcart::Operation::Create
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:external_id).maybe(:string)
              required(:ledger_id).filled(:string)
              required(:name).filled(:string)
              required(:url).filled(:string)
              required(:country_code).filled(:string)
            end
          end

          def deserialized_resource
            Desertcart::AuthenticationToken::Deserializer.new.deserialize(
              hash: response.body['authentication_token'],
              resource: Desertcart::AuthenticationToken.new
            )
          end
        end
      end
    end
  end
end
