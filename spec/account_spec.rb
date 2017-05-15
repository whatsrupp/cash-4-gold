describe Account do


  let (:test_name) {'Xenith'}
  let (:test_amount) {10.00}
  let (:statement) {double :statement, update: 'updated', balance: 'updated'}
  subject(:account) {described_class.new(name: test_name, statement_class: statement)}

  describe 'inialialize' do

    it 'has an account owner' do
      expect(account.owner).to eq test_name
    end

  end

  describe 'deposit' do

    it 'updates the account statement' do
      expect(account.statement).to receive(:update).with(amount: test_amount)
      account.deposit(amount: test_amount)
    end

    it 'returns the current balance of the account after deposit' do
    end

  end

  describe 'current balance' do
    it 'calls to the statement class to show current balance' do
      expect(account.statement).to receive(:balance)
      account.show_current_balance
    end
  end

  describe 'withdraw' do

    it 'updates the account statement' do
      expect(account.statement).to receive(:update).with(amount: - test_amount)
      account.withdraw(amount: test_amount)
    end

    it 'returns the current balance of the account after withdraw' do

    end

    it 'cant withdraw money past zero' do

    end

  end

end
