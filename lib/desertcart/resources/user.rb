# frozen_string_literal: true

module Desertcart
  class User < Desertcart::Resource
    attribute :email, type: LedgerSync::Type::String
  end
end
