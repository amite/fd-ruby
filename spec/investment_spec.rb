require "spec_helper"

describe Investment do
  let(:initial_deposit) {  3_00_000 }
  let(:deposit_rate) { 10 }
  let(:term) { 3 }
  let(:subject) { Investment.new(initial_deposit, deposit_rate, term) }

  it { is_expected.not_to eq(nil) }

  describe "Attributes" do
    its(:initial_deposit) { should_not eq(nil) }
    its(:initial_deposit) { should eq(3_00_000) }

    its(:deposit_rate) { should_not eq(nil) }
    its(:deposit_rate) { should eq(0.1) }

    its(:term) { should_not eq(nil) }
    its(:term) { should eq(3) }
  end

  describe "calculating maturity amount" do
    context 'when investment_type is cumulative' do
      it "maturity_amount is greater than principle amount" do
        subject.investment_type = :cumulative
        expect(subject.maturity_amount).to eq(4_03_467)
        expect(subject.maturity_amount).not_to be < 4_03_467
        expect(subject.maturity_amount).to be > initial_deposit
      end
    end
    context 'when investment_type is noncumulative' do
      it "maturity_amount should be the same as the principle amount" do
        subject.investment_type = :noncumulative
        expect(subject.maturity_amount).to eq(3_00_000)
      end
    end
  end

  describe "setting investment type" do
    it "can be an investment of a non-cumulative type" do
      subject.investment_type = :noncumulative
      expect(subject.investment_type).to eq(:noncumulative)
    end

    it "can be an investment of a cumulative type" do
      subject.investment_type = :cumulative
      expect(subject.investment_type).to eq(:cumulative)
    end

    it "cannot be an investment of an invalid type" do
      expect{ subject.investment_type = :invalidtype }.to raise_error(RuntimeError, "Invalid Investment Type")
    end
  end


end