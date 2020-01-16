$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# director = [
#{name: "Eduardo", movies: ["1","2","3"]},
#{name: "Eduardo", movies: ["1","2","3"]}, 
#{name: "Eduardo", movies: ["1","2","3"]}
#]
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  worldwide_gross = 0
  director_data[:movies].each do |movie|
    worldwide_gross += movie[:worldwide_gross]
  end
 worldwide_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nds.each do |director|
    result[director[:name]] = 0
    result[director[:name]] += gross_for_director(director)
  end
  pp result
end
