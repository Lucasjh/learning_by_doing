class CashRegister

  def initialize
    @total = 0.00
  end

  def total
    sprintf('%.2f', @total)
  end

  def purchase(item_value)
    @total += item_value
  end

  def pay(amount)
    @total -= amount
    if @total > 0
      puts "Your new total is $#{sprintf('%.2f', @total)}"
    elsif @total == 0
      @total = 0.00
    else
      @total < 0
      puts "Your change is $#{sprintf('%.2f', @total.abs)}"
      @total = 0.00
    end
  end
end

register = CashRegister.new

