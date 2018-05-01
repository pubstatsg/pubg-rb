module PUBG
	class Status
		require "pubg/status/attributes"

		attr_reader :data, :attributes

		def initialize(args)
			@data = args["data"]
			@attributes = Attributes.new(@data["attributes"])
		end
	end
end