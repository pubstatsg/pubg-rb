module PUBG
	class Match
		class Participants
			require "pubg/match/included/participants/attributes"

			attr_reader :type, :id, :attributes, :actor, :sharId

			def initialize(args)
				@type = args["type"]
				@id = args["id"]
				@attributes = Attributes.new(args["attributes"])
				@actor = args["attributes"]["actor"]
				@shardId = args["attributes"]["shardId"]
			end
		end
	end
end