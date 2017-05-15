
# Test Classes
require 'account'
require 'statement'
require 'printer'

# Useful additional testing modules
require 'timecop'
require 'pry'

#Helpers
def statement_helper(date: Time.now, balance: 0, credit: 0, debit: 0)
  statement_entry = { date: date,
                      balance: balance,
                      credit: credit,
                      debit: debit,
                    }
end

def build_test_statement

  statement = []
  statement << statement_helper
  statement << statement_helper(balance: 10.00, credit: 10.00)
  statement << statement_helper(balance: 5.00, debit: 5.00)
  return statement

end


#Freeze the output of Time.now
Timecop.freeze(Time.local(2017, 5, 15))
