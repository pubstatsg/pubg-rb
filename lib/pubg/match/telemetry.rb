module PUBG
	class Match
		class Telemetry
			attr_reader :name, :description, :createdAt, :URL

			def initialize(args)
				@name = args["attributes"]["name"]
				@description = args["attributes"]["description"]
				@createdAt = args["attributes"]["createdAt"]
				@URL = args["attributes"]["URL"]
			end
		end
	end
end