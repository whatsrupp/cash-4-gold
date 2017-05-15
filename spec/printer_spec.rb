describe Printer do



  let (:test_statement) {build_test_statement}
  let (:formatted_test_statement){
    "Date || Credit || Debit || Balance\n15/05/2017 ||  || 5.00 || 5.00\n15/05/2017 || 10.00 ||  || 10.00\n15/05/2017 ||  ||  || 0.00"
  }
  subject(:printer){described_class.new}


  describe 'print_statement' do
    it 'prints in the correct format' do
      expect(printer.print_statement(statement: test_statement)).to eq formatted_test_statement
    end
  end

  describe 'print_balance' do


  end
end
