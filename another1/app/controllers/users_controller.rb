class UsersController < ApplicationController

  def index

    random = rand(2).to_i

            # @response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=dachshund&api_key=dc6zaTOxFJmzC&limit=50").parsed_response["data"][random]["images"]["original"]["url"]
    @response = HTTParty.get("https://api.coinbase.com/v1/prices/historical", :format => :text).parsed_response.split("\n")[random].split(",").first
    @price = HTTParty.get("https://api.coinbase.com/v1/prices/buy", :format => :text).parsed_response.split("\n")[0]

  end

end
