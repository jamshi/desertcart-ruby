# frozen_string_literal: true

require_relative '../user/serializer'
require_relative '../marketplace/store/serializer'

module Desertcart
  class AuthenticationToken
    class Serializer < Desertcart::Serializer
      id
      attribute :token
      attribute :expires_at

      references_one 'user',
                     resource_attribute: :user,
                     serializer: Desertcart::User::Serializer
      references_one 'store',
                     resource_attribute: :store,
                     serializer: Desertcart::Marketplace::Store::Serializer
    end
  end
end
