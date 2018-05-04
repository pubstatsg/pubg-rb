module PUBG
  class Player
    class Season
      class Data
        class Relationships
          require "pubg/player/season/data/relationships/player"
          require "pubg/player/season/data/relationships/season"
          require "pubg/player/season/data/relationships/matches"

          def initialize(args)
            @args = args
          end

          def player
            Player.new(@args["player"])
          end

          def season
            Season.new(@args["season"])
          end

          def matchesSolo
            matchStyle(@args["matchesSolo"]["data"])
          end

          def matchesDuo
            matchStyle(@args["matchesDuo"]["data"])
          end

          def matchesSquad
            matchStyle(@args["matchesSquad"]["data"])
          end

          def matchesSoloFPP
            matchStyle(@args["matchesSoloFPP"]["data"])
          end

          def matchesDuoFPP
            matchStyle(@args["matchesDuoFPP"]["data"])
          end
          
          def matchesSquadFPP
            matchStyle(@args["matchesSquadFPP"]["data"])
          end

          def matchStyle(data)
            i = []
            data.each do |item|
              i << Matches.new(item)
            end
            i
          end
        end
      end
    end
  end
end