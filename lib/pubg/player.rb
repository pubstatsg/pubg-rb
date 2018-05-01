module PUBG
	class Player
		require "pubg/player/matches"
		require "pubg/player/player"

		attr_reader :data, :links, :meta, :player, :matches

		def initialize(args)
			if args["data"]
				args = args["data"]
			end
			
			@data = args
			@links = args["links"]
			@meta = args["meta"]
			@player = Player.new(@data["attributes"])
			@matches = get_matches
		end

		def get_matches
			matches = []
			@data["relationships"]["matches"]["data"].each do |match|
	      matches << Matches.new(match)
	    end
	    return matches
		end
	end
end