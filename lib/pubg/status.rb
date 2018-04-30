module PUBG
	class Status
		attr_reader :version, :releasedAt

		def initialize(args)
			@version = args["data"]["attributes"]["version"]
			@releasedAt = args["data"]["attributes"]["releasedAt"]
		end
	end
end