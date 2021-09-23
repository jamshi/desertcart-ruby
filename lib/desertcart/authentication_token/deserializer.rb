# frozen_string_literal: true

require_relative '../user/deserializer'
require_relative '../marketplace/store/deserializer'

module Desertcart
  class AuthenticationToken
    class Deserializer < Desertcart::Deserializer
      id
      attribute :token
      attribute :expires_at

      references_one :user,
                     hash_attribute: 'user',
                     deserializer: Desertcart::User::Deserializer
      references_one :store,
                     hash_attribute: 'store',
                     deserializer: Desertcart::Marketplace::Store::Deserializer
    end
  end
end
