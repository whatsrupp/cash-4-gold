class Printer
  public
    def print_statement(statement: [])
      header = 'Date || Credit || Debit || Balance'
      output_string = header
      statement.reverse.each do |entry|
        output_string += "\n"+prepare_statement_entry_string(entry:entry)
      end
      p output_string
      output_string
    end

  private
    def prepare_statement_entry_string(entry: {})
      date = entry[:date].strftime('%d/%m/%Y')
      entry[:credit]== 0 ? credit = '' : credit = sprintf("%.2f", entry[:credit])
      entry[:debit]== 0 ? debit = '' : debit = sprintf("%.2f", entry[:debit])
      balance = sprintf("%.2f", entry[:balance])
      "#{date} || #{credit} || #{debit} || #{balance}"
    end
end
