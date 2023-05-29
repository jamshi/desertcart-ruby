# frozen_string_literal: true

module Desertcart
  class ShippingAddress
    module Operations
      class Create < Desertcart::Operation::Create
        class Contract < LedgerSync::Ledgers::Contract
          params do
            optional(:first_name).maybe(:string)
            optional(:last_name).maybe(:string)
            optional(:address).maybe(:string)
            optional(:phone_number).maybe(:string)
            optional(:city).maybe(:string)
            optional(:post_code).maybe(:string)
            optional(:country_code).maybe(:string)
          end
        end
      end
    end
  end
end
