module PUBG
	class Player
		attr_reader :type, :id, :createdAt, :updatedAt, :patchVersion, :name, :stats, :titleId, :shardId,
								:link, :matches

		def initialize(args)
			if args["data"]
				args = args["data"]
			end
			
			@type = args["type"]
			@id = args["id"]
			@createdAt = args["attributes"]["createdAt"]
			@updatedAt = args["attributes"]["updatedAt"]
			@patchVersion = args["attributes"]["patchVersion"]
			@name = args["attributes"]["name"]
			@stats = args["attributes"]["stats"]
			@titleId = args["attributes"]["titleId"]
			@shardId = args["attributes"]["shardId"]
			@link = args["links"]["self"]
			@matches = args["relationships"]["matches"]["data"]
		end
	end
end