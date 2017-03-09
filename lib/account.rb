require_relative 'transaction'
require_relative 'statement'

class Account

  def initialize(statement=Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    update_transaction(amount)
  end

  def withdrawal(amount)
    @balance -= amount
    update_transaction(-amount)
  end

  def balance
    @balance
  end

  def statement
    @statement.record
  end

  private

  def update_transaction(amount)
    transaction = Transaction.new(amount, @balance)
    @statement.record << transaction
  end

end
