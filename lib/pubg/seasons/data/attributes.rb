module PUBG
  class Seasons
    class Data
      class Attributes
        def initialize(args)
          @args = args
        end

        def isCurrentSeason
          @args["isCurrentSeason"]
        end

        def isOffseason
          @args["isOffseason"]
        end
      end
    end
  end
end