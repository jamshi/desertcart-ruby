# frozen_string_literal: true

require_relative 'user'
require_relative 'marketplace/store'

module Desertcart
  class AuthenticationToken < Desertcart::Resource
    attribute :token, type: LedgerSync::Type::String
    attribute :expires_at, type: LedgerSync::Type::String

    references_one :user, to: Desertcart::User
    references_one :store, to: Desertcart::Marketplace::Store
  end
end
