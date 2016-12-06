#!usr/bin/env ruby

# This is a pair of glasses to be uncased, unfolded, and worn.
# Inspired by the object itself, its complexity not to be underestimated.
class Glasses
  def initialize
    @case = true
    @fold = true
    @on_face = false
    puts ''
    puts ' (•_•)  ( •_•)>⌐■-■  (⌐■_■) '
    puts ''
    puts 'Would you like to wear the glasses? run => glasses.wear'
    puts ''
  end

  def wear
    if @case == true
      puts ''
      puts 'Remove them from the case first (.case)'
      puts ''
    elsif @fold == true
      puts ''
      puts 'Gotta unfold the glasses first (.fold)'
      puts ''
    else
      @on_face = true
      puts ''
      puts 'I can see!!! ...Done wearing them? (.case)'
      puts ''
    end
  end

  def take_off
    @on_face = false
    puts ''
    puts 'Glasses are off your face, ready to put away.'
    puts ''
  end

  def fold
    if @on_face == true
      puts ''
      puts 'Take off the glasses first! (.take_off)'
      puts ''
    elsif @fold == true
      @fold = false
      puts ''
      puts 'glasses are unfolded'
      puts ''
    else
      @fold = true
      puts ''
      puts 'glasses are folded.'
      puts ''
    end
  end

  def case
    if @case == true
      @case = false
      puts ''
      puts 'glasses are out of case, ready to use.'
      puts ''
    elsif @case == false && @fold == true
      @case = true
      puts ''
      puts 'glasses are in the safely in the case, ready to wear another day.'
      puts ''
      puts ' (⌐■_■)   ( •_•)>⌐■-■   (•_•) '
      puts ''
    else
      puts ''
      puts 'fold glasses first (.fold)'
      puts ''
    end
  end
end

puts ''
puts 'Create an instance of the glasses with => glasses = Glasses.new'
puts ''
