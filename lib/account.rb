require_relative 'transaction'
require_relative 'statement'
require_relative 'display'

class Account

  def initialize(statement=Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    update_transaction(amount,"")
  end

  def withdrawal(amount)
    @balance -= amount
    update_transaction("",amount)
  end

  def balance
    @balance
  end

  def statement(display=Display.new)
    display.show(@statement.record)
  end

  private

  def update_transaction(credit="", debit="")
    transaction = Transaction.new(credit, debit, @balance)
    @statement.record << transaction
  end

end
