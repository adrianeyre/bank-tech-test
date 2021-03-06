require "account"

describe Account do
  let(:statement) {Statement.new}
  subject(:account) {described_class.new(statement)}

  context "New Account" do
    describe "#initialize" do
      it "should have an empty balance" do
        expect(account.balance).to eq 0
        expect(account.statement).to eq "date || credit || debit || balance"
      end
    end

    describe "#deposit" do
      it "should be able to deposit money" do
        account.deposit(10.15)
        expect(account.balance).to eq 10.15
      end
    end

    describe "#withdrawal" do
      it "should be able to withdraw money" do
        account.deposit(10.00)
        account.withdrawal(5.50)
        expect(account.balance).to eq 4.5
      end
    end
  end

end
