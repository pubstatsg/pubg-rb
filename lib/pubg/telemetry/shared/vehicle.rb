module PUBG
  class Telemetry
    class Vehicle
      attr_reader :data, :vehicletype, :vehicleid, :healthpercent, :fuelpercent

      def initialize(args)
        @data = args
        @vehicletype = args["VehicleType"]
        @vehicleid = args["VehicleId"]
        @healthpercent = args["HealthPercent"]
        @fuelpercent = args["FeulPercent"]
      end
    end
  end
end