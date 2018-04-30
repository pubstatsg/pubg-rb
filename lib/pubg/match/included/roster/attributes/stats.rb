module PUBG
	class Match
		class Roster
			class Attributes
				class Stats
					attr_reader :rank, :teamId

					def initialize(args)
						@rank = args["rank"]
						@teamId = args["teamId"]
					end
				end
			end
		end
	end
end