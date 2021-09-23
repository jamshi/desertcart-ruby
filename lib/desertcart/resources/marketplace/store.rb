# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Store < Desertcart::Resource
      attribute :name, type: LedgerSync::Type::String
      attribute :url, type: LedgerSync::Type::String
    end
  end
end
