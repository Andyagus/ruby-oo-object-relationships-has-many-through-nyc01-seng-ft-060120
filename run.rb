require 'pry'
require_relative './lib/customer.rb'
require_relative './lib/meal.rb'
require_relative './lib/waiter.rb'

john=Waiter.new("johnny", 2)
andy = Customer.new("Andy", "25")


binding.pry