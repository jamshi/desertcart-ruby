# frozen_string_literal: true

module Desertcart
  module Marketplace
    class Authorization < Desertcart::Resource
      references_one :store, to: Desertcart::Marketplace::Store
    end
  end
end
