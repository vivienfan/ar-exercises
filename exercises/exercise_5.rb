require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum :annual_revenue
total_stores = Store.count
good_sales_count = Store.where('annual_revenue >= 1000000').size
puts "Total annual revenue of all stores: #{total_revenue}"
puts "Average annual revenue of all stores: #{total_revenue / total_stores}"
puts "Number of stores that are generating $1M or more: #{good_sales_count}"
