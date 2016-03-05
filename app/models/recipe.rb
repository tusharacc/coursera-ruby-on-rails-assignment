require 'httparty'


class Recipe
    include HTTParty
    
    ENV['FOOD2FORK_KEY'] = "49598060a2457d4cf3f05a25a669c202"
    ENV['FOOD2FORK_SERVER_AND_PORT'] = "www.food2fork.com"
    
    key = ENV['FOOD2FORK_KEY']
    uri = ENV['FOOD2FORK_SERVER_AND_PORT']
    
    base_uri "http://#{uri}/api/search"
    default_params  key: key
    format :json    
    
    def self.for term
        get("",query: {q: term})["recipes"]
    end
end





