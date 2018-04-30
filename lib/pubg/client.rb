module PUBG
	require "typhoeus"
  require "oj"

  class Client
  	def initialize(api_key=nil)
      @api_key = api_key[:api_key] || ENV["PUBG_API_KEY"]
    end

    def player(shard, player_id)
      path = "/shards/#{shard}/players/#{player_id}"
      PUBG::Player.new(request(path))
    end

    def status
      path = "/status"
      PUBG::Status.new(request(path))
    end
  	
  	def request(path)
  		request = Typhoeus.get(
			  [$base_url, path].join(""),
			  # params: { field1: "a field" },
			  headers: { 
          Accept: "application/vnd.api+json",
          Authorization: "Bearer #{@api_key}" 
        }
			)

      response = Oj.load(request.body)

      case request.code
      when 200
      when 404
        raise PUBError.new(response["errors"][0]["title"])
      end
      
      return response
  	end
  end
end
