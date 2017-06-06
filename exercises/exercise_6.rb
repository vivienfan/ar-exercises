require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store4 = Store.find 4
@store5 = Store.find 5
@store6 = Store.find 6
@store7 = Store.find 7
@store8 = Store.find 8
@store9 = Store.find 9

@store1.employees.create first_name: "AAA", last_name: "Laaa", hourly_rate: 60
@store1.employees.create first_name: "BBB", last_name: "Lbbb", hourly_rate: 60
@store1.employees.create first_name: "CCC", last_name: "Lccc", hourly_rate: 60

@store2.employees.create first_name: "DDD", last_name: "Lddd", hourly_rate: 60
@store2.employees.create first_name: "EEE", last_name: "Leee", hourly_rate: 60
@store2.employees.create first_name: "FFF", last_name: "Lfff", hourly_rate: 60

@store4.employees.create first_name: "GGG", last_name: "Lggg", hourly_rate: 60
@store4.employees.create first_name: "HHH", last_name: "Lhhh", hourly_rate: 60
@store4.employees.create first_name: "III", last_name: "Liii", hourly_rate: 60

@store5.employees.create first_name: "JJJ", last_name: "Ljjj", hourly_rate: 60
@store5.employees.create first_name: "KKK", last_name: "Lkkk", hourly_rate: 60
@store5.employees.create first_name: "LLL", last_name: "Llll", hourly_rate: 60

@store6.employees.create first_name: "MMM", last_name: "Lmmm", hourly_rate: 60
@store6.employees.create first_name: "NNN", last_name: "Lnnn", hourly_rate: 60
@store6.employees.create first_name: "OOO", last_name: "Looo", hourly_rate: 60

@store7.employees.create first_name: "PPP", last_name: "Lppp", hourly_rate: 70
@store7.employees.create first_name: "QQQ", last_name: "Lqqq", hourly_rate: 70
@store7.employees.create first_name: "RRR", last_name: "Lrrr", hourly_rate: 60

@store8.employees.create first_name: "SSS", last_name: "Lsss", hourly_rate: 80
@store8.employees.create first_name: "TTT", last_name: "Lttt", hourly_rate: 80
@store8.employees.create first_name: "UUU", last_name: "Luuu", hourly_rate: 60

@store9.employees.create first_name: "VVV", last_name: "Lvvv", hourly_rate: 90
@store9.employees.create first_name: "WWW", last_name: "Lwww", hourly_rate: 90
@store9.employees.create first_name: "XXX", last_name: "Lxxx", hourly_rate: 60
