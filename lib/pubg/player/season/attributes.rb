module PUBG
  class Player
    class Season
      class Data
        class Attributes
          require "pubg/player/season/data"
          
          def initialize(args)
            @args = args
          end

          def gameModeStats
            @args["gameModeStats"]
          end
        end
      end
    end
  end
end