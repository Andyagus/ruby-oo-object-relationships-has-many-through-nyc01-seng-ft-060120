require 'pry'
    # #new
    #   initializes with a waiter, a customer, a total and a tip (FAILED - 5)
    # .all
    #   is class method that returns the contents of @@all (FAILED - 6)

class Meal

	attr_accessor :waiter, :customer, :total, :tip

	@@all = []

	def initialize(waiter, customer, total, tip)
		@waiter = waiter
		@customer = customer
		@total = total
		@tip = tip
		@@all << self
	end

	def self.all 
		@@all
	end

end

# binding.pry