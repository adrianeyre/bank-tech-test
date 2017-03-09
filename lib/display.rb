class Display

  Header = ["date","credit","debit","balance"]
  HeaderLength = [4,6,5,7]

  def show(statement, header=Header)
    @display_output = []
    @final = []
    @display_output << Header
    make_output(statement)
    add_white_space
    @final.join("\n")
  end

  private

  def make_output(statement)
    statement.each do |transaction|
      output = []
      output << transaction.date.strftime("%d/%m/%Y")
      output << credit(transaction.credit)
      output << debit(transaction.debit)
      output << "#{'%.02f' % transaction.balance}"
      (0..HeaderLength.length-1).each do |i|
        HeaderLength[i] = output[i].length if output[i].length > HeaderLength[i]
      end
      @display_output << output
    end
  end

  def credit(amount)
    amount == "" ? "" : "#{"%.02f" % amount}"
  end

  def debit(amount)
    amount == "" ? "" : "#{"%.02f" % amount}"
  end

  def add_white_space
    @display_output.map do |transaction|
      i = 0
      output = []
      transaction.map do |data|
        output << data += (" " * (HeaderLength[i] - data.length))
        i += 1
      end
      @final << output.join(" || ")
    end
  end

end
