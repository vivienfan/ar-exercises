require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require 'pg'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class ApparelValidator < ActiveModel::Validator
  def validate(record)
    unless record.mens_apparel || record.womens_apparel
      record.errors[:base] << "a store has to have either men's or women's apparel"
    end
  end
end

class Store < ActiveRecord::Base
  validates :name,            length: { minimum: 3 }
  validates :annual_revenue,  numericality: {greater_than_or_equal_to: 0}

  include ActiveModel::Validations
  validates_with ApparelValidator
end

class Employee < ActiveRecord::Base
  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :hourly_rate, inclusion: 40..200
  validates :store_id,    presence: true
end

invalidStore = Store.new name:"this", annual_revenue: 10, mens_apparel:false, womens_apparel:false
invalidStore.save
pp invalidStore.errors

print 'New store name:'
newName = STDIN.gets.chomp
newStore = Store.new name: newName
newStore.save
pp newStore.errors

