# frozen_string_literal: true

module Desertcart
  class User
    class Serializer < Desertcart::Serializer
      id
      attribute :email
    end
  end
end
