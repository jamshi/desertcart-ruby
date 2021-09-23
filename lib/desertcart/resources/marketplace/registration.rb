# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Registration < Desertcart::Resource
      attribute :name, type: LedgerSync::Type::String
      attribute :url, type: LedgerSync::Type::String
      attribute :country_code, type: LedgerSync::Type::String
    end
  end
end
