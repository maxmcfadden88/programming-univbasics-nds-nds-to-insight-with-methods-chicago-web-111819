$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
pp directors_database

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.size do
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end