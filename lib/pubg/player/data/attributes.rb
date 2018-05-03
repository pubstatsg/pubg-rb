module PUBG
  class Player
    class Data
      class Attributes
        def initialize(args)
          @args = args
        end

        def titleId
          @args["titleId"]
        end

        def shardId
          @args["shardId"]
        end

        def createdAt
          @args["createdAt"]
        end

        def updatedAt
          @args["updatedAt"]
        end

        def patchVersion
          @args["patchVersion"]
        end

        def name
          @args["name"]
        end

        def stats
          @args["stats"]
        end
      end
    end
  end
end