# frozen_string_literal: true

module Desertcart
  class Operation
    module Mixin
      def self.included(base)
        base.include LedgerSync::Ledgers::Operation::Mixin
        base.include InstanceMethods # To ensure these override parent methods
      end

      module InstanceMethods
        def ledger_resource_path
          @ledger_resource_path ||= [
            ledger_namespace_path,
            ledger_resource_type.pluralize,
            resource.ledger_id
          ].compact.join('/')
        end

        def ledger_namespace_path
          @ledger_namespace_path ||= nil
        end

        def deserialized_resource
          deserializer.deserialize(
            hash: response.body[ledger_resource_type],
            resource: resource
          )
        end

        def ledger_resource_type
          @ledger_resource_type ||= client.class.ledger_resource_type_for(
            resource_class: resource.class
          )
        end
      end
    end
  end
end
