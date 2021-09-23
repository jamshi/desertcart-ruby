# frozen_string_literal: true

require_relative '../operation'

module Desertcart
  class Operation
    class Create
      include Desertcart::Operation::Mixin

      private

      def create_in_ledger
        return LedgerSync::Result.Success(response) if response.success?

        fail(response.status)
      end

      def operate
        create_in_ledger
          .and_then { success }
      end

      def response
        @response ||= client.create(
          body: serializer.serialize(resource: resource),
          path: ledger_resource_path
        )
      end

      def success
        super(
          resource: deserialized_resource,
          response: response
        )
      end

      def fail(status)
        failure(
          LedgerSync::Error::OperationError.new(
            operation: self,
            response: response,
            message: "Status code: #{status}"
          ),
          resource: @resource
        )
      end
    end
  end
end
