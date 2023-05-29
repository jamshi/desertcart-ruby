# frozen_string_literal: true

module Desertcart
  class ShippingAddress
    class Deserializer < Desertcart::Deserializer
      id
      attribute :first_name
      attribute :last_name
      attribute :address
      attribute :address2
      attribute :phone_number
      attribute :city
      attribute :post_code
      attribute :country_code
      attribute :country_name
      attribute :tax_number
      attribute :national_id_number
    end
  end
end
