module PUBG
	class Status
    require "pubg/status/data"

		def initialize(args)
      @args = args
		end

    def original
      @args
    end

    def data
      Data.new(@args["data"])
    end
	end
end