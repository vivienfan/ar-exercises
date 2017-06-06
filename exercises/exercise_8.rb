require 'pg'
require 'securerandom'
require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

class Employee < ActiveRecord::Base
  before_create :generate_password

  private
  def generate_password
    self.password = SecureRandom.base64 8
  end
end

@store9.employees.create first_name: "YYY", last_name: "Lyyy", hourly_rate: 60
@store9.employees.create first_name: "ZZZ", last_name: "Lzzz", hourly_rate: 60