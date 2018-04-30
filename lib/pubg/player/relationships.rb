module PUBG
	class Player
		class Relationships
			require "pubg/player/relationships/matches"

			attr_reader :assets, :matches

			def initialize(args)
				@args = args
				@assets = args["assets"]["data"]
				@matches = Array.new
				get_matches
			end

			def get_matches
				@args["matches"]["data"].each do |match|
	        @matches << Matches.new(match)
	      end
			end
		end
	end
end