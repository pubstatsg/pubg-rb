module PUBG
	class Match
		class Attributes
			attr_reader :titleId, :shardId, :tags, :createdAt, :duration, :stats, :gameMode

			def initialize(args)
				@titleId = args["titleId"]
				@shardId = args["shardId"]
				@tags = args["tags"]
				@createdAt = args["createdAt"]
				@duration = args["duration"]
				@stats = args["stats"]
				@gameMode = args["gameMode"]
			end
		end
	end
end