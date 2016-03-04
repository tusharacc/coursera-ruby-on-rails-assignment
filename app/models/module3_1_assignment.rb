require 'httparty'


class Recipe
    include HTTParty
    attr_accessor :base_uri, :default_params, :fmt
    
    def initialize(base_uri,fmt,default_params)
      self.base_uri=base_uri
      puts base_uri
      self.default_params={}
      self.fmt=fmt
    end
    
    def base_uri=(value)
      @base_uri=value
    end
    
    def default_params=(value)
      @default_params=value
    end
    
    def fmt=(value)
      @fmt=value
    end
    
  
    base_uri @base_uri
    default_params  key:"49598060a2457d4cf3f05a25a669c202"
    format @fmt
    
    def self.for term
        puts base_uri
        HTTParty.get("",query: {q: term})
    end
end





