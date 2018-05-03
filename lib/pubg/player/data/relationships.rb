module PUBG
  class Player
    class Data
      class Relationships
        require "pubg/player/matches"
        
        def initialize(args)
          @args = args
        end

        def assets
          @args["assets"]["data"]
        end

        def matches
          matches = []
          @args["matches"]["data"].each do |match|
            matches << Matches.new(match)
          end
          return matches
        end
      end
    end
  end
end