module PUBG
	class Status
		class Attributes
			attr_reader :version, :releasedAt

			def initialize(args)
				@version = args["version"]
				@releasedAt = args["releasedAt"]
			end
		end
	end
end