#!/usr/bin/env ruby

def give_me(request)
  print "#{request} "
  gets.chomp
end

adj1 = give_me('Give me an adjective: ')
adj2 = give_me('Give me another adjective: ')
noun1 = give_me('Give me a noun: ')
noun2 = give_me('Give me another noun: ')
plural_noun = give_me('Give me plural noun: ')
game = give_me('Give me a game: ')
plural_noun2 = give_me('Give another plural noun: ')
verb1 = give_me("Give me a verb ending in 'ing': ")
verb2 = give_me("Give me another verb ending in 'ing': ")
plural_noun3 = give_me('Give me another plural noun: ')
verb3 = give_me("Give another verb ending in 'ing': ")
noun3 = give_me('Give me another noun: ')
plant = give_me('Give me a plant: ')
body_part = give_me('Give me a body part: ')
place = give_me('Give me a place: ')
verb4 = give_me("Give me another verb ending in 'ing': ")
adj3 = give_me('Give me another adjective: ')
number = give_me('Give me a number: ')
plural_noun4 = give_me('Give me another plural noun: ')

puts 'Here is your madlib:'
puts "A vacation is when you take a trip to some #{adj1} place
with your #{adj2} family. Usually you go to some place
that is near a/an #{noun1} or up on a/an #{noun2}.
A good vacation place is one where you can ride #{plural_noun}
or play #{game} or go hunting for #{plural_noun2}. I like
to spend my time #{verb1} or #{verb2}.
When parents go on a vacation, they spend their time eating
three #{plural_noun3} a day, and fathers play golf, and mothers
sit around #{verb3}. Last summer, my little brother
fell in a/an #{noun3} and got poison #{plant} all
over his #{body_part}. My family is going to go to (the)
#{place}, and I will practice #{verb4}. Parents
need vacations more than kids because parents are always very
#{adj3} and because they have to work #{number}
hours every day all year making enough #{plural_noun4} to pay
for the vacation."
