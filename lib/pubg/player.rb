module PUBG
	class Player
		attr_reader :type, :id, :createdAt, :updatedAt, :patchVersion, :name, :stats, :titleId, :shardId,
								:link, :matches

		def initialize(args)
			@type = args["data"]["type"]
			@id = args["data"]["id"]
			@createdAt = args["data"]["attributes"]["createdAt"]
			@updatedAt = args["data"]["attributes"]["updatedAt"]
			@patchVersion = args["data"]["attributes"]["patchVersion"]
			@name = args["data"]["attributes"]["name"]
			@stats = args["data"]["attributes"]["stats"]
			@titleId = args["data"]["attributes"]["titleId"]
			@shardId = args["data"]["attributes"]["shardId"]
			@link = args["data"]["links"]["self"]
			@matches = args["data"]["relationships"]["matches"]["data"]
		end
	end
end