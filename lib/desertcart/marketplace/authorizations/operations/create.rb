# frozen_string_literal: true

require_relative '../../../resources/authentication_token'

module Desertcart
  module Marketplace
    class Authorization
      module Operations
        class Create < Desertcart::Operation::Create
          class Contract < LedgerSync::Ledgers::Contract
            params do
              optional(:store).maybe(:hash, Types::Reference)
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
