#!/usr/bin/env ruby

deca = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
deca_minus = deca - [5, 6, 7]
deca_unshift = (deca - [5, 6, 7]).unshift(5)
deca_push = (deca - [5, 6, 7]).unshift(5).push(6)
deca_reject = deca.reject { |a| a < 9 }
empty_a = (deca - deca).length

puts deca.join('...') + '...'
puts 'T-' + deca.reverse.join(', ') + '...  BLASTOFF!'
puts "The last element is #{deca.last}"
puts "The first element is #{deca.first}"
puts "The third element is #{deca[2]}"
puts "The element with the index of 3 is #{deca[3]}"
puts "The second from last element is #{deca[8]}"
puts 'The first four elements are ' + "'" + deca.take(4) * ',' + "'"
puts "If we delete 5, 6, and 7 from the array, we're left with #{deca_minus}"
puts "If we add 5 at the beginning of the array,\
 we're left with #{deca_unshift}"
puts "If we add 6 at the end of the array, we're left with #{deca_push}"
puts "Only the elements #{deca_reject} are > 8"
puts "If we remove all the elements, then the length of the array is #{empty_a}"
