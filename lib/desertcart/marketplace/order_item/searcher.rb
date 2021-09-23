# frozen_string_literal: true

module Desertcart
  module Marketplace
    class OrderItem
      class Searcher < Searcher
        def resource_class
          @resource_class ||= Desertcart::Marketplace::OrderItem
        end

        def searcher_deserializer_class
          @searcher_deserializer_class ||= resource_class::Deserializer
        end

        def ledger_namespace_path
          'marketplace'
        end
      end
    end
  end
end
