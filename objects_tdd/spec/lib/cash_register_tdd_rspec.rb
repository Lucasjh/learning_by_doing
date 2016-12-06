# This is a CashRegister test

require_relative '../../lib/cash_register_ttd'

describe CashRegister do
  it 'should be a Cash Register' do
    expect(subject).to be_a(CashRegister)
  end

  describe '#total' do
    it 'should start at $0.00' do
      expect(subject.total).to eq(0.00)
    end
  end

  describe '#purchase(amount)' do
    it 'should add the purchase amount to the total' do
      subject.purchase(1.00)
      expect(subject.total).to eq(1.00)
    end
  end

  describe '#pay(amount)' do
    it 'should subtract the pay amount from the total' do
      subject.purchase(1.00)
      subject.pay(1.00)
      expect(subject.total).to eq(0.00)
    end
  end

  describe '#pay(amount)' do
    it 'should subtract the pay amount from the total' do
      subject.purchase(1.00)
      subject.pay(0.50)
      expect(subject.total).to eq(0.50)
    end
  end

  describe '#pay(amount)' do
    it 'should subtract the pay amount from the total' do
      subject.purchase(1.00)
      change = "Your new total is $0.50\n"
      expect { subject.pay(0.50) }.to output(change).to_stdout
      expect(subject.total).to eq(0.50)
    end
  end

  describe '#pay(amount)' do
    it 'should subtract the pay amount from the total' do
      subject.purchase(1.00)
      expect { subject.pay(1.50) }.to output("Your change is $0.50\n").to_stdout
      expect(subject.total).to eq(0.00)
    end
  end
end
