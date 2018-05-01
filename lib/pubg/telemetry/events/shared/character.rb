module PUBG
  class Telemetry
    class Character
      require "pubg/telemetry/events/shared/location"

      attr_reader :name, :teamId, :health, :location, :ranking, :accountId

      def initialize(args)
        @name = args["Name"]
        @teamId = args["TeamId"]
        @health = args["Health"]
        @location = Location.new(args["Location"])
        @ranking = args["Ranking"]
        @accountId = args["AccountId"]
      end
    end
  end
end