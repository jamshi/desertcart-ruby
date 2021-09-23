# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Authorization
      class Serializer < Desertcart::Serializer
        attribute :store_id do |args = {}|
          resource = args.fetch(:resource)
          resource.store.ledger_id
        end
      end
    end
  end
end
