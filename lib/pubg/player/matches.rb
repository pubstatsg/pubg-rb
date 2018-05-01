module PUBG
	class Player
		class Matches
			attr_reader :type, :id

			def initialize(args)
				@type = args["type"]
				@id = args["id"]
			end
		end
	end
end