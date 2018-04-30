module PUBG
	class Match
		class Roster
			class Attributes
				require "pubg/match/included/roster/attributes/stats"

				attr_reader :stats, :won, :shardId

				def initialize(args)
					@stats = Stats.new(args["stats"])
					@won = args["won"]
					@shardId = args["shardId"]
				end
			end
		end
	end
end