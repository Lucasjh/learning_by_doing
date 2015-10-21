#!/usr/bin/env ruby

class CashRegister
  attr_reader :total

  def initialize
    @total = 0.0
    puts ''
    puts 'Your total is $0.00'
    puts ''
    puts 'Actions:'
    puts "'register.purchase(float_number_here)' for a purchase."
    puts "'register.total' to check the current total."
    puts "'register.pay' to pay balance."
    puts''
  end

  def purchase(item_value)
    @total += item_value
  end

  def pay(amount)
    @total -= amount
    if @total > 0
      puts "Your new total is $#{@total}"
    elsif @total == 0
      puts "Thank you, come again!"
      @total = 0.0
    else
      @total < 0
      puts "Your change is $#{@total}"
      @total = 0.0
    end
  end
end

register = CashRegister.new
