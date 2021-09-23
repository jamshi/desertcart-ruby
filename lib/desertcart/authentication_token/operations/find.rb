# frozen_string_literal: true

module Desertcart
  class AuthenticationToken
    module Operations
      class Find < Desertcart::Operation::Find
        class Contract < LedgerSync::Ledgers::Contract
          params do
            required(:external_id).maybe(:string)
            required(:ledger_id).filled(:string)
            optional(:token).maybe(:string)
            optional(:expires_at).maybe(:string)
            optional(:user).maybe(:hash, Types::Reference)
            optional(:store).maybe(:hash, Types::Reference)
          end
        end
      end
    end
  end
end
