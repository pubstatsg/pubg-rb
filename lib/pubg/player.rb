module PUBG
	class Player
		require "pubg/player/matches"
		require "pubg/player/player"
		require "pubg/player/season"

		attr_reader :data, :links, :meta, :player, :matches, :season

		def initialize(args)
			if args["data"]
				args = args["data"]
			end
			
			@data = args
			@links = args["links"]
			@meta = args["meta"]
			@player = Player.new(@data["attributes"])
			@matches = get_matches
			@player_id = @data["id"]
			@season = nil
		end

		def get_matches
			matches = []
			@data["relationships"]["matches"]["data"].each do |match|
	      matches << Matches.new(match)
	    end
	    return matches
		end

		def season(platform_region=$platform_region, season_id=nil)
			Season.new(platform_region, @player_id, season_id)
		end
	end
end