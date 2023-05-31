# frozen_string_literal: true

module Desertcart
  class ShippingAddress
    class Serializer < Desertcart::Serializer
      id
      attribute :first_name
      attribute :last_name
      attribute :address
      attribute :phone_number
      attribute :city
      attribute :post_code
      attribute :country_code
      attribute :country_name
    end
  end
end
