module PUBG
  class Telemetry
    require "pubg/telemetry/LogPlayerLogin"
    require "pubg/telemetry/LogPlayerCreate"
    require "pubg/telemetry/LogPlayerPosition"
    require "pubg/telemetry/LogPlayerAttack"

    attr_reader :events

    def initialize(args)
      @args = args
      @events = Array.new
      @LogPlayerLogin = nil
      @LogPlayerCreate = nil
      @LogPlayerPosition = nil
      @LogPlayerAttack = nil

      @LogItemPickup = nil
      @LogItemEquip = nil
      @LogItemUnequip = nil
      @LogVehicleRide = nil
      @LogMatchDefinition = nil
      @LogMatchStart = nil
      @LogGameStatePeriodic = nil
      @LogVehicleLeave = nil
      @LogPlayerTakeDamage = nil
      @LogPlayerLogout = nil
      @LogItemAttach = nil
      @LogItemDrop = nil
      @LogPlayerKill = nil
      @LogItemDetach = nil
      @LogItemUse = nil
      @LogCarePackageSpawn = nil
      @LogVehicleDestroy = nil
      @LogCarePackageLand = nil
      @LogMatchEnd = nil

      process_telemetry
    end

    def process_telemetry
      @args.each do |event|
        case event["_T"]
        when "LogPlayerLogin"
          @events << LogPlayerLogin.new(event)
        when "LogPlayerCreate"
          @events << LogPlayerCreate.new(event)
        when "LogPlayerPosition"
          @events << LogPlayerPosition.new(event)
        when "LogPlayerAttack"
          @events << LogPlayerAttack.new(event)
        end
      end
    end
  end
end