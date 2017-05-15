class Account
  public

    attr_reader :balance, :owner

    def initialize (name: 'Hercule')
      @owner = name
      @balance = 0
    end

    def deposit (amount: 0)
      update_balance(amount: amount)
    end

  private

    attr_writer :balance

    def update_balance (amount: 0)
      self.balance = self.balance + amount
    end

end
