module PUBG
  class Player
    class Season
      class Data
        class Attributes
          require "pubg/player/season/data/game_mode_stats"
          
          def initialize(args)
            @args = args
          end

          def gameModeStats
            GameModeStats.new(@args["gameModeStats"])
          end
        end
      end
    end
  end
end