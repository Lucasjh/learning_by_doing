#!/usr/bin/env ruby

n = 99

bot = 'bottles'

def song(bot, n)
  while n > 2
    puts n.to_s + " #{bot} of beer on the wall, " +
        n.to_s + " #{bot} of beer."
    n -= 1
    puts 'Take one down and pass it around, ' + n.to_s +
        " #{bot} of beer on the wall."
    puts ''
  end

  if n == 2
    puts n.to_s + " #{bot} of beer on the wall, " +
        n.to_s + " #{bot} of beer."
    n -= 1
    puts 'Take one down and pass it around, ' + n.to_s +
        " #{bot.chop} of beer on the wall."
    puts ''
  end

  if n == 1
    puts n.to_s + " #{bot.chop} of beer on the wall, " +
        n.to_s + " #{bot.chop} of beer."
    n -= 1
    puts "Take one down and pass it around, no more #{bot} of beer on the wall."
    puts ''
    puts 'No more bottles of beer on the wall, no more bottles of beer. '
    puts "Go to the store and buy some more, 99 #{bot} of beer on the wall."
  end
end

song(bot, n)
