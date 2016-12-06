# This is a CashRegister
class CashRegister
  attr_reader :total

  def initialize
    @total = 0.00
  end

  def purchase(amount)
    @total += amount
    puts "#{amount}"
  end

  def pay(amount)
    @total -= amount
    if @total >= 0.00
      puts "Your new total is $#{format('%.2f', @total)}"
    elsif @total <= 0.00
      puts "Your change is $#{format('%.2f', @total.abs)}"
      @total = 0.00
    end
  end
end
