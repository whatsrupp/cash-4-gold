require 'statement'
class Account
  public

    attr_reader :owner, :statement

    def initialize (name: "Ch'boy", statement_class: Statement.new)
      @owner = name
      @statement = statement_class
    end

    def deposit (amount: 0)
      update_statement(amount: amount)
    end

    def show_current_balance
      calculate_balance
    end

    def withdraw (amount: 0)
      update_statement(amount: - amount)
    end

  private
    attr_reader :update
    def update_statement (amount: 0)
      statement.update(amount: amount)
    end

    def calculate_balance
      statement.balance
    end
end
