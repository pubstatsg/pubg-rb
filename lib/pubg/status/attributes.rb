module PUBG
	class Status
		class Attributes
			def initialize(args)
				@args = args
			end

      def version
        @args["version"]
      end

      def releasedAt
        @args["releasedAt"]
      end
		end
	end
end