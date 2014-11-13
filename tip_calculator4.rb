#define the class
class Meal
	def initialize (meal, tax, tip)
		@meal = meal
		@tax = tax
		@tip = tip
	end

	def get_total_meal_cost
		tax_value = self.get_value(@tax)
		meal_with_tax = @meal + tax_value
		tip_value = self.get_value(@tip)
		total_cost = meal_with_tax+tip_value
	
		puts "The pre-tax cost of your meal was $" + sprintf("%.2f", @meal)
		puts "At #{@tax}%, tax for this meal is $" + sprintf("%.2f",tax_value)
		puts "For a #{@tip}% tip, you should leave $" + sprintf("%.2f",tip_value)
		puts "The grand total for this meal is then $" + sprintf("%.2f",total_cost)
	end

	def get_value(percentage)
		return @meal * (percentage/100)
	end

end


# get initial values from the user
puts "How much did your meal cost?"
meal = Float(gets.chomp)
puts "What is your local tax rate in percentage?"
tax = Float(gets.chomp)
puts "What perecentage would you like to tip?"
tip = Float(gets.chomp)

# create a new MealCost instance
this_meal = Meal.new(meal, tax, tip)

this_meal.get_total_meal_cost