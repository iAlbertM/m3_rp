require "httparty"

class Recipe
	include HTTParty
	base_uri "http://www.recipepuppy.com"
	format :json

	self.for(term)
		get("/api", query: {q: term})["recipes"]
	end
end
