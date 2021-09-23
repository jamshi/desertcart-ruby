# frozen_string_literal: true

require_relative '../../resources/authentication_token'

module Desertcart
  class Session
    module Operations
      class Find < Desertcart::Operation::Find
        class Contract < LedgerSync::Ledgers::Contract
          params do
            required(:external_id).maybe(:string)
            required(:ledger_id).filled(:string)
            optional(:login).maybe(:string)
            optional(:password).maybe(:string)
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
