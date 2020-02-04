require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.where(id: 3)
@store3.destroy(@store3.ids)

puts Store.count
