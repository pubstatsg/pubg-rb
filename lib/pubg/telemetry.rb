module PUBG
  class Telemetry
    require "pubg/telemetry/log_player_login"
    require "pubg/telemetry/log_player_create"
    require "pubg/telemetry/log_player_position"
    require "pubg/telemetry/log_player_attack"
    require "pubg/telemetry/log_item_equip"
    require "pubg/telemetry/log_item_pickup"
    require "pubg/telemetry/log_item_unequip"

    attr_reader :data, :playerlogin, :playercreate, :playerposition, :playerattack, :itempickup,
                :itemequip, :itemunequip

    def initialize(args)
      @data = args

      @playerlogin = []
      @playercreate = []
      @playerposition = []
      @playerattack = []
      @itempickup = []
      @itemequip = []
      @itemunequip = []

      process_events
    end

    def process_events
      @data.each do |event|
        case event["_T"]
        when "LogPlayerLogin"
          @playerlogin << LogPlayerLogin.new(event)
        when "LogPlayerCreate"
          @playercreate << LogPlayerCreate.new(event)
        when "LogPlayerPosition"
          @playerposition << LogPlayerPosition.new(event)
        when "LogPlayerAttack"
          @playerattack << LogPlayerAttack.new(event)
        when "LogItemPickup"
          @itempickup << LogItemPickup.new(event)
        when "LogItemEquip"
          @itemequip << LogItemEquip.new(event)
        when "LogItemUnequip"
          @itemunequip << LogItemUnequip.new(event)
        when "LogVehicleRide"
          # << LogVehicleRide.new(event)
        when "LogMatchDefinition"

        when "LogMatchStart"

        when "LogGameStatePeriodic"

        when "LogVehicleLeave"

        when "LogPlayerTakeDamage"

        when "LogPlayerLogout"

        when "LogItemAttach"

        when "LogItemDrop"

        when "LogPlayerKill"

        when "LogItemDetach"

        when "LogItemUse"

        when "LogCarePackageSpawn"

        when "LogVehicleDestroy"

        when "LogCarePackageLand"
        
        when "LogMatchEnd"

        end
      end
    end
  end
end