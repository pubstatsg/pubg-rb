module PUBG
	class Player
		require "pubg/player/links"
		require "pubg/player/data"
		require "pubg/player/matches"
		require "pubg/player/season"

		def initialize(args)
			@args = args
		end

		def original
			@args
		end

		def data
			Data.new(@args["data"])
		end

		def links
			Links.new(@args["links"])
		end

		def meta
			@args["meta"]
		end

		def player
			Data::Attributes.new(@args["data"]["attributes"])
		end

		def playerId
			@args["data"]["id"]
		end

		def matches
			matches = []
			@args["data"]["relationships"]["matches"]["data"].each do |match|
	      matches << Matches.new(match)
	    end
	    return matches
		end

		def season(season_id=nil, platform_region=$platform_region)
			Season.new(platform_region, @args["data"]["id"], season_id)
		end
	end
end