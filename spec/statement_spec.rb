describe Statement do

  subject(:statement) {described_class.new()}
  let (:account) {double :account, update: 'updated'}
  let (:test_amount) {10.00}

  describe 'show' do
    it 'shows the current statment object safely' do
      blank_statement = statement_helper
      expect(statement.show).to eq([blank_statement])
    end
  end

  describe 'update statement' do
    it 'stores information about a credit' do
      deposit_statement_entry = statement_helper(balance: test_amount, credit: test_amount)
      statement.update(amount:test_amount)
      expect(statement.show).to include(deposit_statement_entry)
    end

    it 'calculates new balance from the previous balance' do
      withdraw_statement_entry = statement_helper(balance: 5.00, debit: 5.00)
      statement.update(amount: 10.00)
      statement.update(amount: -5.00)
      expect(statement.show.last[:balance]).to eq(5.00)
    end

    it 'stores information about a debit' do
      withdraw_statement_entry = statement_helper(balance: 5.00, debit: 5.00)
      statement.update(amount: 10.00)
      statement.update(amount: -5.00)
      expect(statement.show).to include(withdraw_statement_entry)
    end

    it 'stores information about the current date' do
    end
    it 'contains multiple transactions' do
    end
  end

  describe 'inialialize' do

    it 'has an empty statment instance variable' do
      blank_statement = statement_helper
      expect(statement.show).to include(blank_statement)
    end
  end

end
