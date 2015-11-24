#!/usr/bin/env ruby

array_to_100 = (1..100).to_a

def fizz_buzz(number)
  if number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  elsif number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  else
    number
  end
end

fizz_buzzed = array_to_100.map {|number| fizz_buzz(number)}
puts fizz_buzzed
