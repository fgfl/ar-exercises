require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.first
@store2 = Store.where(id: 2)[0]

@store1.update(name: "Hallelujah")

pp @store1
pp @store2