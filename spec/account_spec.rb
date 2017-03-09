require "account"

describe Account do
  subject(:account) {described_class.new}

  context "New Account" do
    describe "#Initialize" do
      it "should have an empty balance" do
        expect(account.balance).to eq 0
      end
    end
  end
  
end
