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


    def withdraw (amount: 0)
      update_statement(amount: - amount)
    end

end
