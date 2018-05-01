module PUBG
  class Telemetry
    require "pubg/telemetry/logplayerlogin"
    require "pubg/telemetry/logplayercreate"
    require "pubg/telemetry/logplayerposition"
    require "pubg/telemetry/logplayerattack"

    attr_reader :data, :playerlogin, :playercreate, :playerposition, :playerattack

    def initialize(args)
      @data = args

      @playerlogin = []
      @playercreate = []
      @playerposition = []
      @playerattack = []

      process_telemetry
    end

    def process_telemetry
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
        end
      end
    end
  end
end