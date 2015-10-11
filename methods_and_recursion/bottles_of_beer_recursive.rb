#!/usr/bin/env ruby

# This a recursive version by DaVinci alumni that Jon found online.
# I understand how it works, I did not write it. Bill helped me make it
# better, using return instead of abort.
# http://mark.kreyman.com/76/ruby/99-bottles-of-beer-ruby-methods-and-recursion/

def pluralize(n, text)
  return text + 's' if n != 1
  text
end

def bottles_on_the_wall(n)
  if n.zero?
    print("No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, #{n + 99} bottles of beer on the wall.")
    return
  end
  puts "#{n} #{pluralize(n, 'bottle')} of beer on the wall,
    #{n} #{pluralize(n, 'bottle')} of beer.
    Take one down and pass it around, #{n != 1 ? (n - 1) : 'no more'}
    #{pluralize(n - 1, 'bottle')} of beer on the wall.\n\n"
  bottles_on_the_wall(n - 1)
end

n = 99
bottles_on_the_wall(n)

# return if n.zero?
