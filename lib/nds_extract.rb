$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  # for element in director_data do
    for movies in director_data[:movies] do
      total += movies[:worldwide_gross]
    end
  # end
  return total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  list = {}
  for element in nds do
    total = 0
    for movies in element[:movies] do
      total += movies[:worldwide_gross]
      list[element[:name]] = total
    end
  end
  return list
end
