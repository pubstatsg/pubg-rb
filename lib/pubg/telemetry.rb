module PUBG
  class Telemetry
    require "pubg/telemetry/logplayerlogin"
    require "pubg/telemetry/logplayercreate"
    require "pubg/telemetry/logplayerposition"
    require "pubg/telemetry/logplayerattack"
    require "pubg/telemetry/logitempickup"
    require "pubg/telemetry/logitemequip"

    attr_reader :data, :playerlogin, :playercreate, :playerposition, :playerattack, :itempickup,
                :itemequip

    def initialize(args)
      @data = args

      @playerlogin = []
      @playercreate = []
      @playerposition = []
      @playerattack = []
      @itempickup = []
      @itemequip = []

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

        when "LogVehicleRide"

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