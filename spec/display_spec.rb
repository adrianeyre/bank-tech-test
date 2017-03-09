require "display"

describe Display do
  let(:transaction) {Transaction.new(10.00, "", 10.00)}
  let(:statement) {Statement.new}
  subject(:display) {described_class.new}

  context "Display statement" do
    describe "#show" do
      xit "display empty balance" do
        statement.record << transaction
        expect(display.show(statement)).to eq "date || credit || debit || balance"
      end
    end
  end

end
