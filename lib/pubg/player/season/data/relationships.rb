module PUBG
  class Player
    class Season
      class Data
        class Relationships
          require "pubg/player/season/data/relationships/player"

          def initialize(args)
            @args = args
          end

          def player
            Player.new(@args["player"])
          end

          def season
            @args["season"]
          end

          def matchesSolo
            @args["matchesSolo"]
          end

          def matchesDuo
            @args["matchesDuo"]
          end

          def matchesSquad
            @args["matchesSquad"]
          end

          def matchesSoloFPP
            @args["matchesSoloFPP"]
          end

          def matchesDuoFPP
            @args["matchesDuoFPP"]
          end
          
          def matchesSquadFPP
            @args["matchesSquadFPP"]
          end          
        end
      end
    end
  end
end