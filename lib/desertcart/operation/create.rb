# frozen_string_literal: true

require_relative '../operation'

module Desertcart
  class Operation
    class Create
      include Desertcart::Operation::Mixin

      private

      def create_in_ledger
        case response.status
        when 201
          LedgerSync::Result.Success(response)
        when 422
          rejected
        else
          fail(response.status)
        end
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

      def rejected
        failure(
          LedgerSync::Error::OperationError::UnprocessableEntityError.new(
            operation: self,
            response: response
          ),
          resource: @resource
        )
      end
    end
  end
end
