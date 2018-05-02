module PUBG
	require "typhoeus"
  require "oj"

  class Client
  	def initialize(api_key=nil, platform_region="xbox-na")
      # TODO: raise error if api_key nil
      $api_key = api_key || ENV["PUBG_API_KEY"]
      $platform_region = platform_region || ENV["PUBG_PLATFORM_REGION"]
    end

    def api_key
      $api_key
    end

    def platform_region
      $platform_region
    end

    def player(platform_region=$platform_region, player_id)
      path = "/shards/#{platform_region}/players/#{player_id}"
      PUBG::Player.new(Client.request(path))
    end

    def players(platform_region=$platform_region, items)
      if items.include?("account.")
        params = "?filter[playerIds]=#{items}"
      else
        params = "?filter[playerNames]=#{items}"
      end
      path = "/shards/#{platform_region}/players#{params}"
      PUBG::Players.new(Client.request(path))
    end

    def match(platform_region=$platform_region, match_id)
      path = "/shards/#{platform_region}/matches/#{match_id}"
      PUBG::Match.new(Client.request(path))
    end

    def telemetry(url)
      PUBG::Telemetry.new(telemetry_request(url))
    end

    def seasons(platform_region=$platform_region)
      path = "/shards/#{platform_region}/seasons"
      PUBG::Seasons.new(Client.request(path))
    end

    def status
      path = "/status"
      PUBG::Status.new(Client.request(path))
    end
  	
  	def self.request(path)
  		request = Typhoeus.get(
			  [$base_url, path].join(""),
			  headers: { 
          Accept: "application/vnd.api+json",
          Authorization: "Bearer #{$api_key}" 
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
