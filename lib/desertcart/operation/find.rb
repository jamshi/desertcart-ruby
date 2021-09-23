# frozen_string_literal: true

require_relative '../operation'

module Desertcart
  class Operation
    class Find
      include Desertcart::Operation::Mixin

      private

      def find_in_ledger
        case response.status
        when 200
          LedgerSync::Result.Success(response)
        when 404
          not_found
        else
          fail(response.status)
        end
      end

      def operate
        find_in_ledger
          .and_then { success }
      end

      def response
        @response ||= client.read(
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

      def not_found
        failure(
          LedgerSync::Error::OperationError::NotFoundError.new(
            operation: self,
            response: response
          ),
          resource: @resource
        )
      end
    end
  end
end
