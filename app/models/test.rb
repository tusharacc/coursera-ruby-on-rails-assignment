require 'httparty'


class Recipe
    include HTTParty
    
    
    base_uri "http://food2fork.com/api/search"
    default_params  key:"49598060a2457d4cf3f05a25a669c202"
    format :json    
    
    def self.for term
        get("",query: {q: term})
    end
end





