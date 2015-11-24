#!/usr/bin/env ruby

# This a recursive version by DaVinci alumni that Jon found online.
# I understand how it works, I did not write it. Bill helped me make it
# better, using return instead of abort.
# http://mark.kreyman.com/76/ruby/99-bottles-of-beer-ruby-methods-and-recursion/

def pluralize(bottles, text)
  return text + 's' if bottles != 1
  text
end

def bottles_on_the_wall(bottles)
  if bottles.zero?
    print("No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.")
    return
  end
  puts "#{bottles} #{pluralize(bottles, 'bottle')} of beer on the wall,
    #{bottles} #{pluralize(bottles, 'bottle')} of beer.
    Take one down and pass it around, #{bottles != 1 ? (bottles - 1) : 'no more'}
    #{pluralize( bottles - 1, 'bottle')} of beer on the wall."
  bottles_on_the_wall(bottles - 1)
end

bottles = 99
bottles_on_the_wall(bottles)

# return if bottles.zero?
