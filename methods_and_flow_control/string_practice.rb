#!/usr/bin/env ruby

string = 'this is a string to practice with'
subst = (string.slice(20, 9) * 3).chop + '!'

puts string
puts string.capitalize
puts string.upcase
puts string.capitalize.gsub('string', "'string'")
puts "The string '" + string + "' has #{string.length} characters."
puts string.reverse
puts subst

#-This is a 'string' to practice with
#+this is a 'string' to practice with
