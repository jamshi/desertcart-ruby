# frozen_string_literal: true

module Desertcart
  class Serializer < LedgerSync::Serializer
    def self.id
      attribute('id', resource_attribute: :ledger_id)
    end
  end
end
