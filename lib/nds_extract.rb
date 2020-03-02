$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  row_index = 0
    
    while row_index < directors_database.length do
     gross_sum = 0
     inner_array_index = 0
     while inner_array_index < directors_database[row_index][:movies].length do
      gross_sum += directors_database[row_index][:movies][inner_array_index][:worldwide_gross]
      inner_array_index += 1
     end
     row_index += 1
     return gross_sum
    end
  end
 

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
   row_index = 0
     name_array = []
     while row_index < directors_database.length do
      name_array.push(directors_database[row_index][:name])
      row_index += 1
     end
     puts name_array
 
    row_index = 0
    totals_array = [] 
    while row_index < directors_database.length do
     gross_sum = 0
     inner_array_index = 0
     while inner_array_index < directors_database[row_index][:movies].length do
      gross_sum += directors_database[row_index][:movies][inner_array_index][:worldwide_gross]
      inner_array_index += 1
     end
     row_index += 1
     totals_array.push(gross_sum)
     puts gross_sum
    end
  result = {}
  directors_database.length.times { |index|
  result[name_array[index]] = totals_array[index]
  
  }

  result
end
