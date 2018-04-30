module PUBG
	class Match
		class Relationships
			class Rosters
				attr_reader :type, :id

				def initialize(args)
					@type = args["type"]
					@id = args["id"]
				end
			end
		end
	end
end