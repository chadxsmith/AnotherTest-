require 'pry'
require 'httparty'

random = rand(2).to_i

            # @response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=dachshund&api_key=dc6zaTOxFJmzC&limit=50").parsed_response["data"][random]["images"]["original"]["url"]
    @response = HTTParty.get("https://api.coinbase.com/v1/prices/historical", :format => :text)
    @price = HTTParty.get("https://api.coinbase.com/v1/prices/buy", :format => :text)

puts @response



variable = {
  "btc": {
    "amount": "1.00000000",
    "currency": "BTC"
  },
  "subtotal": {
    "amount": "10.10",
    "currency": "USD"
  },
  "fees": [
    {
      "coinbase": {
        "amount": "0.10",
        "currency": "USD"
      }
    },
    {
      "bank": {
        "amount": "0.15",
        "currency": "USD"
      }
    }
  ],
  "total": {
    "amount": "10.35",
    "currency": "USD"
  }
}



binding.pry
