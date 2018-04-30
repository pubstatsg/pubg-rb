module PUBG
	class Match
		class Roster
			require "pubg/match/included/roster/attributes"
			require "pubg/match/included/roster/relationships"

			attr_reader :type, :id, :attributes, :relationships

			def initialize(args)
				@type = args["type"]
				@id = args["id"]
				@attributes = Attributes.new(args["attributes"])
				@relationships = Relationships.new(args["relationships"])
			end
		end
	end
end