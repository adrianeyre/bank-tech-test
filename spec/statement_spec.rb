require "statement"

describe Statement do
  let(:transaction) {Transaction.new(10.99, nil, 110.99)}
  subject(:statement) {described_class.new}

  context "New Statement" do
    describe "#initialize" do
      it "should be empty" do
        expect(statement.record).to eq []
      end
    end

    describe "create a transaction" do
      it "statement should include new transaction" do
        statement.record << transaction
        expect(statement.record).to eq [transaction]
      end
    end
  end

end
