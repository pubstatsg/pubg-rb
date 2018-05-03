module PUBG
	class Player
		class Matches
			def initialize(args)
				@args = args
			end

			def type
				@args["type"]
			end

			def id
				@args["id"]
			end
		end
	end
end