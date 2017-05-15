require_relative 'statement'
require_relative 'printer'

class Account
  public

    attr_reader :owner, :statement, :printer

    def initialize ( name: "Ch'boy",
                     statement_class: Statement.new,
                     printer_class: Printer.new)
      @owner = name
      @statement = statement_class
      @printer = printer_class
    end

    def deposit (amount: 0)
      update_statement(amount: amount)
    end

    def balance
      printer.print_balance
    end

    def see_statement
      printer.print_statement(statement: get_statement)
    end

    def withdraw (amount: 0)
      update_statement(amount: - amount)
    end

  private
    attr_reader :update

    def get_statement
      statement.show
    end

    def update_statement (amount: 0)
      statement.update(amount: amount)
    end
end
