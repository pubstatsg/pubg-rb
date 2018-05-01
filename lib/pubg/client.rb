module PUBG
	require "typhoeus"
  require "oj"

  class Client
  	def initialize(api_key=nil)
      @api_key = api_key[:api_key] || ENV["PUBG_API_KEY"]
      @shard = ENV["PUBG_SHARD"] || "xbox-na"
    end

    def player(shard=@shard, player_id)
      path = "/shards/#{shard}/players/#{player_id}"
      PUBG::Player.new(request(path))
    end

    def players(shard=@shard, items)
      params = "?filter[playerNames]=#{items}"
      path = "/shards/#{shard}/players#{params}"
      players = Array.new

      data = request(path)
      data["data"].each do |player|
        players << PUBG::Player.new(player)
      end
      return players
    end

    def match(shard=@shard, match_id)
      path = "/shards/#{shard}/matches/#{match_id}"
      PUBG::Match.new(request(path))
    end

    def telemetry(url)
      PUBG::Telemetry.new(telemetry_request(url))
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
      when 404
        raise PUBError.new(response["errors"][0]["title"])
      when 429
        raise PUBError.new("RateLimit-Limit reached")
      end
      
      return response
  	end

    def telemetry_request(url)
      request = Typhoeus.get(
        url,
        headers: { 
          Accept: "application/vnd.api+json"
        }
      )

      response = Oj.load(request.body)

      case request.code
      when 404, 403
        raise PUBError.new("Cant find telemetry file")
      when 500
        raise PUBError.new("Server error")
      end

      return response
    end
  end
end
