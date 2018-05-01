module PUBG
  class Telemetry
    class LogPlayerCreate
      require "pubg/telemetry/shared/character"

      attr_reader :character, :_V, :_D, :_T

      def initialize(args)
        @character = Character.new(args["Character"])
        @_V = args["_V"]
        @_D = args["_D"]
        @_T = args["_T"]
      end
    end
  end
end