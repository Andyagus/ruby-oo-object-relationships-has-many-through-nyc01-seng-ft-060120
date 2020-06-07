require 'pry'
 # Customer
 #    #new_meal
 #      initializes a meal using the current Customer instance, a provided Waiter instance and a total and tip (FAILED - 2)
 #    #meals
 #      returns an Array of Meal instances associated with this customer (FAILED - 3)
 #    #waiters
 #      returns an Array of Waiter instances associated with this customer's meals (FAILED - 4)


class Customer 
	attr_accessor :name, :age	
	@@all = []
	def initialize (name, age)
		@name = name 
		@age = age 
		@@all << self
	end

	def self.all 
		@@all
	end

	def new_meal(waiter, total, tip)
		Meal.new(waiter, self,total, tip)
	end


      # returns an Array of Meal instances associated with this customer (FAILED - 1)

	def meals
		Meal.all.select do |meals| 
			meals.customer == self
		end
	end

      # returns an Array of Waiter instances associated with this customer's meals (FAILED - 1)

	def waiters
		meals.map{|meal| meal.waiter}
	end



end

