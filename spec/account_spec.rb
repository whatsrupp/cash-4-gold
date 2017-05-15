describe Account do
  let (:test_name) {'Xenith'}
  subject(:account) {described_class.new(name: test_name)}

  describe 'inialialize' do
    it 'opens an account with a balance of 0' do
      expect(account.balance).to eq 0
    end

    it 'has an account owner' do
      expect(account.owner).to eq test_name
    end
  end

  describe 'deposit' do
    it 'updates the account balance by a specified amount' do
      amount = 10.00
      expect{account.deposit(amount: amount)}.to change{account.balance}.by(amount)
    end

    it 'works out the current date' do
    end

    it 'updates the account statement' do

    end

    it 'returns the current balance of the account after deposit' do

    end

  end

  describe 'withdraw' do

    it 'detracts a specified amount from the balance' do
    end

    it 'works out the current date' do
    end

    it 'updates the account statement' do
    end

    it 'returns the current balance of the account after withdraw' do
    end

    it 'cant withdraw money past zero' do

    end

  end

end
