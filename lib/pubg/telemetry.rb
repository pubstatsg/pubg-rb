module PUBG
  class Telemetry
    require "pubg/telemetry/log_player_login"
    require "pubg/telemetry/log_player_create"
    require "pubg/telemetry/log_player_position"
    require "pubg/telemetry/log_player_attack"
    require "pubg/telemetry/log_item_equip"
    require "pubg/telemetry/log_item_pickup"
    require "pubg/telemetry/log_item_unequip"
    require "pubg/telemetry/log_vehicle_ride"

    def initialize(args)
      @args = args
    end

    def data
      @args
    end

    def playerLogin
      @args.select {|data| data["_T"] == "LogPlayerLogin" }
    end

    def playerCreate
      @args.select {|data| data["_T"] == "LogPlayerCreate" }
    end

    def playerPosition
      @args.select {|data| data["_T"] == "LogPlayerPosition" }
    end

    def playerAttack
      @args.select {|data| data["_T"] == "LogPlayerAttack" }
    end

    def itemPickup
      @args.select {|data| data["_T"] == "LogItemPickup" }
    end

    def itemEquip
      @args.select {|data| data["_T"] == "LogItemEquip" }
    end

    def itemUnequip
      @args.select {|data| data["_T"] == "LogItemUnequip" }
    end

    def vehicleRide
      @args.select {|data| data["_T"] == "LogVehicleRide" }
    end

    def LogMatchDefinition

    end

    def LogMatchStart

    end

    def LogGameStatePeriodic

    end

    def LogVehicleLeave

    end

    def LogPlayerTakeDamage

    end

    def LogPlayerLogout

    end

    def LogItemAttach

    end

    def LogItemDrop

    end

    def LogPlayerKill

    end

    def LogItemDetach

    end

    def LogItemUse

    end

    def LogCarePackageSpawn

    end

    def LogVehicleDestroy

    end

    def LogCarePackageLand

    end
        
    def LogMatchEnd

    end

  end
end