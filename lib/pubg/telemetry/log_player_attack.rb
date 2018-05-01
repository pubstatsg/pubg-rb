module PUBG
  class Telemetry
    class LogPlayerAttack
      require "pubg/telemetry/shared/attacker"
      require "pubg/telemetry/shared/weapon"
      require "pubg/telemetry/shared/vehicle"

      attr_reader :data, :attackid, :attacker, :attacktype, :weapon, :vehicle, :_V, :_D, :_T

      def initialize(args)
        @data = args
        @attackid = args["AttackId"]
        @attacker = Attacker.new(args["Attacker"])
        @attacktype = args["AttackType"]
        @weapon = Weapon.new(args["Weapon"])
        @vehicle = Vehicle.new(args["Vehicle"])
        @_V = args["_V"]
        @_D = args["_D"]
        @_T = args["_T"]
      end
    end
  end
end