module PUBG
  class Telemetry
    class LogPlayerPosition
      require "pubg/telemetry/shared/character"
      
      attr_reader :character, :elapsedtime, :numaliveplayers, :_V, :_D, :_T

      def initialize(args)
        @character = Character.new(args["Character"])
        @elapsedtime = args["ElapsedTime"]
        @numaliveplayers = args["NumAlivePlayers"]
        @_V = args["_V"]
        @_D = args["_D"]
        @_T = args["_T"]
      end
    end
  end
end