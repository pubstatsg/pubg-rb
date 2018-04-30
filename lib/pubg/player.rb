module PUBG
	class Player
		require "pubg/player/attributes"
		require "pubg/player/relationships"

		attr_reader :type, :id, :attributes, :relationships, :link

		def initialize(args)
			if args["data"]
				args = args["data"]
			end
			
			@type = args["type"]
			@id = args["id"]
			@attributes = Attributes.new(args["attributes"])
			@relationships = Relationships.new(args["relationships"])
			@link = args["links"]["self"]
		end
	end
end