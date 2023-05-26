# frozen_string_literal: true

module Desertcart
  class BuyerAddress < Desertcart::Resource
    attribute :first_name, type: LedgerSync::Type::String
    attribute :last_name, type: LedgerSync::Type::String
    attribute :address, type: LedgerSync::Type::String
    attribute :address2, type: LedgerSync::Type::String
    attribute :phone_number, type: LedgerSync::Type::String
    attribute :city, type: LedgerSync::Type::String
    attribute :post_code, type: LedgerSync::Type::String
    attribute :country_code, type: LedgerSync::Type::String
    attribute :country_name, type: LedgerSync::Type::String
    attribute :tax_number, type: LedgerSync::Type::String
    attribute :national_id_number, type: LedgerSync::Type::String
    attribute :address_type, type: LedgerSync::Type::String
  end
end
