# frozen_string_literal: true

module Desertcart
  class User
    class Deserializer < Desertcart::Deserializer
      id
      attribute :email
    end
  end
end
