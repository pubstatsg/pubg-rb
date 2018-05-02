module PUBG
	class Status
		require "pubg/status/attributes"

		def initialize(args)
      @args = args
		end

    def data
      @args["data"]
    end

    def attributes
      Attributes.new(@args["data"]["attributes"])
    end
	end
end