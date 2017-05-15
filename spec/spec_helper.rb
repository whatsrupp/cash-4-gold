
# Test Classes
require 'account'
require 'statement'

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

#Freeze the output of Time.now
Timecop.freeze(Time.local(2017, 5, 15))
