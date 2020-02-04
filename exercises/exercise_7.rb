require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"
require_relative "./exercise_6"

puts "Exercise 7"
puts "----------"

# Your code goes here ...
invalid = Store.new(name: "sh", annual_revenue: 1234, mens_apparel: true, womens_apparel: true)
p invalid, invalid.valid?, invalid.errors.messages
invalid = Store.new(name: "shs", annual_revenue: -33, mens_apparel: true, womens_apparel: true)
p invalid, invalid.valid?, invalid.errors.messages
invalid = Store.new(name: "shs", annual_revenue: 33.333, mens_apparel: true, womens_apparel: true)
p invalid, invalid.valid?, invalid.errors.messages

invalid = @store1.employees.new(first_name: "", last_name: "asdf", hourly_rate: 234)
p invalid, invalid.valid?, invalid.errors.messages
invalid = @store1.employees.new(first_name: "585858", last_name: "", hourly_rate: 234)
p invalid, invalid.valid?, invalid.errors.messages
invalid = @store1.employees.new(first_name: "585858", last_name: "jfjfj", hourly_rate: 39)
p invalid, invalid.valid?, invalid.errors.messages
invalid = @store1.employees.new(first_name: "585858", last_name: "jfjfj", hourly_rate: 40)
p invalid, invalid.valid?, invalid.errors.messages
invalid = @store1.employees.new(first_name: "585858", last_name: "jfjfj", hourly_rate: 200)
p invalid, invalid.valid?, invalid.errors.messages
invalid = @store1.employees.new(first_name: "585858", last_name: "jfjfj", hourly_rate: 201)
p invalid, invalid.valid?, invalid.errors.messages
