module PUBG
  class Telemetry
    class LogVehicleRide
      require "pubg/telemetry/shared/character"
      require "pubg/telemetry/shared/vehicle"
      
      attr_reader :data, :character, :vehicle, :_V, :_D, :_T

      def initialize(args)
        @data = args
        @character = Character.new(args["Character"])
        @vehicle = Vehicle.new(args["Vehicle"])
        @_V = args["_V"]
        @_D = args["_D"]
        @_T = args["_T"]
      end
    end
  end
end