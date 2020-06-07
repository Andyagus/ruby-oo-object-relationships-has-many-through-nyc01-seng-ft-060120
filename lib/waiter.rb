  # Waiter
  #   #new_meal
  #     initializes a meal using the current Waiter instance, a provided Customer instance and a total and tip (FAILED - 1)
  #   #meals
  #     returns an Array of Meal instances associated with this waiter (FAILED - 2)
  #   #best_tipper
  #     returns the Customer instance associated with the meal that received the largest tip (FAILED - 3)



class Waiter

	attr_accessor :name, :experience

	@@all = []

	def initialize(name, experience)
		@name = name
		@experience = experience
		@@all << self
	end

	def self.all 
		@@all
	end

	def new_meal(customer, total, tip)
		Meal.new(self, customer, total, tip)
	end


	def meals
		Meal.all.select{|meal| meal.waiter == self}
	end	

	def best_tipper
		best_tipped_meal = meals.max do |meal_a, meal_b|
			meal_a.tip <=> meal_b.tip
		end
		best_tipped_meal.customer
	end

end
