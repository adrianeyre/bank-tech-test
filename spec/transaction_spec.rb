require "transaction"
require 'timecop'

describe Transaction do

  context "New Transaction" do
    describe "#initialize" do
      it "make a deposit" do
        Timecop.freeze do
          transaction = Transaction.new(10.99, nil,  110.99)
          expect(transaction.credit).to eq 10.99
          expect(transaction.debit).to eq nil
          expect(transaction.balance).to eq 110.99
          expect(transaction.date).to eq Time.now
        end
      end

      it "make a withdrawal" do
        Timecop.freeze do
          transaction = Transaction.new(nil, 10.99, 89.01)
          expect(transaction.credit).to eq nil
          expect(transaction.debit).to eq 10.99
          expect(transaction.balance).to eq 89.01
          expect(transaction.date).to eq Time.now
        end
      end
    end


  end

end
