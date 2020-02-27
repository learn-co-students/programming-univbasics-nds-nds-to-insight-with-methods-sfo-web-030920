$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  col_idx = 0
  gross = 0
  while col_idx < director_data[:movies].length do
    gross += director_data[:movies][col_idx][:worldwide_gross]
    #binding.pry
    col_idx += 1
  end
   gross
end

#binding.pry
def directors_totals(nds)
  result = {}
  idx = 0
  while idx < nds.length do
    result[nds[idx][:name]] = gross_for_director(nds[idx])
    #binding.pry
    idx += 1
  end
  return result
end



# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
#require "pry"
#binding.pry

