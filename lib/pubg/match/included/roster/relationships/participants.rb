module PUBG
	class Match
		class Roster
			class Relationships
				class Participants
					attr_reader :type, :id

					def initialize(args)
						@type = args["type"]
						@id = args["id"]
					end
				end
			end
		end
	end
end