module PUBG
  class Telemetry
    class Character
      require "pubg/telemetry/shared/location"

      attr_reader :name, :teamid, :health, :location, :ranking, :accountid

      def initialize(args)
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