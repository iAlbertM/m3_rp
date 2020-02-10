require "httparty"

class Recipe
	include HTTParty
	base = "www.recipepuppy.com"
	base_uri "http://#{base}/api"
	format :json

	self.for(term)
		get("", query: {q: term})["recipes"]
	end
end
