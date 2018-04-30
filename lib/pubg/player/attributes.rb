module PUBG
	class Player
		class Attributes
			attr_reader :name, :stats, :titleId, :shardId, :createdAt, :updatedAt, :patchVersion

			def initialize(args)
				@name = args["name"]
				@stats = args["stats"]
				@titleId = args["titleId"]
				@shardId = args["shardId"]
				@createdAt = args["createdAt"]
				@updatedAt = args["updatedAt"]
				@patchVersion = args["patchVersion"]
			end
		end
	end
end