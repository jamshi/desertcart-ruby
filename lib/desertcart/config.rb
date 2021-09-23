# frozen_string_literal: true

module Desertcart
end

LedgerSync.register_ledger(
  :desertcart,
  {
    root_path: 'desertcart',
    base_module: Desertcart
  }
) do |config|
  config.name = 'Desertcart'
end
