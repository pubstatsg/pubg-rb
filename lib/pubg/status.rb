module PUBG
	class Status
		require "pubg/status/attributes"

		attr_reader :type, :id, :attributes

		def initialize(args)
			@type = args["data"]["type"]
			@id = args["data"]["id"]
			@attributes = Attributes.new(args["data"]["attributes"])
		end
	end
end