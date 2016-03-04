require_relative "module3_1_assignment"
require_relative "test"

obj = Recipe.new "http://food2fork.com/api/search/","json",{key:"49598060a2457d4cf3f05a25a669c202"}

puts Recipe.for "chocolate"
#puts Recipe.for "chocolate"