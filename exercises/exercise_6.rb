require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store5 = Store.where(id: 5)[0]
@store1.employees.create(first_name: "Khurran", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Joe", last_name: "Smith", hourly_rate: 30)
@store2.employees.create(first_name: "Foobar", last_name: "Player", hourly_rate: 44)
@store5.employees.create(first_name: "Noman", last_name: "Sland", hourly_rate: 999999)