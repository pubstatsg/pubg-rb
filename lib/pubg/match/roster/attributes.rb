module PUBG
  class Match
    class Roster
      class Attributes
        attr_reader :stats, :won, :shardId

        def initialize(args)
          @stats = Stats.new(args["stats"])
          @won = args["won"]
          @shardId = args["shardId"]
        end

        # ----------------
        class Stats
          attr_reader :rank, :teamId

          def initialize(args)
            @rank = args["rank"]
            @teamId = args["teamId"]
          end
        end
      end
    end
  end
end
