module PUBG
  class Telemetry
    class Attacker
      require "pubg/telemetry/shared/location"

      attr_reader :data, :name, :teamid, :health, :location, :ranking, :accountid

      def initialize(args)
        @data = args
        @name = args["Name"]
        @teamid = args["TeamId"]
        @health = args["Health"]
        @location = Location.new(args["Location"])
        @ranking = args["Ranking"]
        @accountid = args["AccountId"]
      end
    end
  end
end