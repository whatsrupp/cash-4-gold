class Statement
  public

    def initialize
      @statement = [statement_entry_maker]
    end

    def show
      statement.dup
    end

    def update(amount: 0)
      append_new_statement(amount: amount)
    end

  private

    attr_reader :statement

    def append_new_statement(amount:0)
      @statement = statement << statement_entry_maker(amount: amount)
    end

    def statement_entry_maker(amount: 0)

      statement_entry = { date: Time.now,
        balance: 0,
        credit: 0,
        debit: 0,
      }

      return statement_entry if amount == 0

      if deposit?(amount: amount)
        statement_entry[:credit] = amount
      else
        statement_entry[:debit] = - amount
      end

      statement_entry[:balance] = calculate_new_balance(amount: amount)
      return statement_entry
    end

    def deposit?(amount: 0)
      amount > 0
    end

    def calculate_new_balance (amount: 0)
      statement.last[:balance] + amount
    end
end
