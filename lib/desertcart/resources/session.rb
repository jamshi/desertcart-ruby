# frozen_string_literal: true

module Desertcart
  class Session < Desertcart::Resource
    attribute :login, type: LedgerSync::Type::String
    attribute :password, type: LedgerSync::Type::String
  end
end
