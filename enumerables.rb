require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  foodArr = []
  spicy_foods.each { |food| foodArr.push(food[:name]) }
  foodArr
end

# given an array of spicy foods, **return an array of hashes**
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  foodArr = []
  spicy_foods.each { |food| foodArr.push(food) if food[:heat_level] > 5 }
  foodArr
end

# given an array of spicy foods, **output to the terminal**

# each spicy food in the following format:
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶 # HINT: you can use * with a string to produce the correct number of 🌶 emoji.

# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    emoji = '🌶'
    chilis = food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{emoji * chilis}\n"
  end
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.each { |food| return food if cuisine == food[:cuisine] }
end

# Given an array of spicy foods, **return an array of hashes**
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  if spicy_foods[0][:heat_level] > spicy_foods[1][:heat_level]
    is_changed = true
    while is_changed
      is_changed = false
      (spicy_foods.length - 1).times do |i|
        if spicy_foods[i][:heat_level] > spicy_foods[i + 1][:heat_level]
          is_changed = true
          spicy_foods[i], spicy_foods[i + 1] = spicy_foods[i + 1], spicy_foods[i]
        end
      end
    end
  end
  spicy_foods
end

# the spicy foods that have a heat level greater than 5, in the following format:

# given an array of spicy foods, output to the terminal ONLY
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  emoji = '🌶'

  spicy_foods.each do |food|
    chilis = food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{emoji * chilis}\n" if food[:heat_level] > 5
  end
end

# given an array of spicy foods, return an integer representing

# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  sum = 0
  spicy_foods.each { |food| sum = food[:heat_level] + sum }
  quotient = sum / spicy_foods.length
end
