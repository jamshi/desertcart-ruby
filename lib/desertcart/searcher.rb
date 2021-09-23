# frozen_string_literal: true

module Desertcart
  class Searcher < LedgerSync::Ledgers::Searcher
    def resources
      case response.status
      when 200
        response.body
                .fetch(ledger_resource_type.pluralize)
                .map { |o| deserialized_resource(hash: o) }
      else
        []
      end
    end

    def next?
      case response.status
      when 200
        response.body.dig('meta', 'pagination', 'next_page')
      else
        false
      end
    end

    def deserialized_resource(hash:)
      searcher_deserializer.deserialize(
        hash: hash,
        resource: resource_class.new
      )
    end

    def response
      @response ||= client.read(
        path: ledger_resources_path,
        params: query
      )
    end

    def resource_class
      @resource_class ||= self.class.inferred_resource_class
    end

    def searcher_deserializer_class
      @searcher_deserializer_class ||= self.class.inferred_serialization_class(
        type: 'SearcherDeserializer'
      )
    end

    def searcher_deserializer
      searcher_deserializer_class.new
    end

    def ledger_namespace_path
      @ledger_namespace_path ||= nil
    end

    def ledger_resources_path
      @ledger_resources_path ||= [
        ledger_namespace_path,
        ledger_resource_type.pluralize
      ].compact.join('/')
    end

    def ledger_resource_type
      @ledger_resource_type ||= client.class.ledger_resource_type_for(
        resource_class: resource_class
      )
    end
  end
end
