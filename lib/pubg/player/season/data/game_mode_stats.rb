module PUBG
  class Player
    class Season
      class Data
        class Attributes
          class GameModeStats
            require "pubg/player/season/data/stats"

            def initialize(args)
              @args = args
            end

            def solo
              Stats.new(@args["solo"])
            end

            def duo
              Stats.new(@args["duo"])
            end

            def squad
              Stats.new(@args["squad"])
            end

            def solo_fpp
              Stats.new(@args["solo-fpp"])
            end

            def duo_fpp
              Stats.new(@args["duo-fpp"])
            end

            def squad_fpp
              Stats.new(@args["squad-fpp"])
            end
          end
        end
      end
    end
  end
end