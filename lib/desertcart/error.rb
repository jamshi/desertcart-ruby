# frozen_string_literal: true

module LedgerSync
  class Error
    class OperationError
      class UnprocessableEntityError < OperationError; end
    end
  end
end
