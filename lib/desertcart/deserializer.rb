# frozen_string_literal: true

module Desertcart
  class Deserializer < LedgerSync::Deserializer
    def self.id
      attribute(:ledger_id, hash_attribute: 'id')
    end
  end
end
