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
  before_save :generate_password
  # before_create :generate_password
  # after_create :update_password

  private
  def generate_password
    self.password = SecureRandom.base64 8
  end

  def update_password
    self.update_attribute(:password, SecureRandom.base64(8))
  end
end

@store9.employees.create first_name: "YYY", last_name: "Lyyy", hourly_rate: 60
@store9.employees.create first_name: "ZZZ", last_name: "Lzzz", hourly_rate: 60