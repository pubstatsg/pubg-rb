module PUBG
	class Player
		require "pubg/player/matches"
		require "pubg/player/player"
		require "pubg/player/season"

		def initialize(args)
			if args["data"]
				args = args["data"]
			end
			
			@args = args
		end

		def data
			@args
		end

		def links
			@args["links"]
		end

		def meta
			@args["meta"]
		end

		def player
			Player.new(@args["attributes"])
		end

		def playerId
			@args["id"]
		end

		def matches
			matches = []
			@args["relationships"]["matches"]["data"].each do |match|
	      matches << Matches.new(match)
	    end
	    return matches
		end

		def season(platform_region=$platform_region, season_id=nil)
			Season.new(platform_region, @player_id, season_id)
		end
	end
end