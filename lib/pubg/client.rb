module PUBG
	require "typhoeus"
  require "oj"

  class Client
  	def initialize(api_key=nil)
      @api_key = api_key[:api_key] || ENV["PUBG_API_KEY"]
      @shard = ENV["PUBG_SHARD"] || nil
    end

    def player(shard=@shard, player_id)
      path = "/shards/#{shard}/players/#{player_id}"
      PUBG::Player.new(request(path))
    end

    def players(shard=@shard, items)
      params = "?filter[playerNames]=#{items}"
      path = "/shards/#{shard}/players#{params}"

      PUBG::Players.new(request(path))
    end

    def status
      path = "/status"
      PUBG::Status.new(request(path))
    end
  	
  	def request(path)
  		request = Typhoeus.get(
			  [$base_url, path].join(""),
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
