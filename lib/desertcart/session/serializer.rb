# frozen_string_literal: true

module Desertcart
  class Session
    class Serializer < Desertcart::Serializer
      attribute :login
      attribute :password
    end
  end
end
