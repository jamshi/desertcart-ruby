# frozen_string_literal: true

module Desertcart
  module Marketplace
    class ShippingAddress < Desertcart::Resource
      attribute :name, type: LedgerSync::Type::String
      attribute 'address_line_1', type: LedgerSync::Type::String
      attribute 'address_line_2', type: LedgerSync::Type::String
      attribute :city, type: LedgerSync::Type::String
      attribute :state, type: LedgerSync::Type::String
      attribute :zip_code, type: LedgerSync::Type::String
      attribute :country, type: LedgerSync::Type::String
    end
  end
end
