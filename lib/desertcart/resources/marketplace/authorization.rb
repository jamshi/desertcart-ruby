# frozen_string_literal: true

require_relative 'store'

module Desertcart
  module Marketplace
    class Authorization < Desertcart::Resource
      references_one :store, to: Desertcart::Marketplace::Store
    end
  end
end
