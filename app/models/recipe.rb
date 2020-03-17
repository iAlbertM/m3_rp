require "httparty"
require "awesome_print"

class Recipe
	include HTTParty

	base_uri "http://www.recipepuppy.com/api"
	format :json
	# @recipe = nil

	def self.for(term)
		response = get("http://www.recipepuppy.com/api", query: {q: term})
	end

end 