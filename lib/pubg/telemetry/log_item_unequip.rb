module PUBG
  class Telemetry
    class LogItemUnequip
      require "pubg/telemetry/shared/character"
      require "pubg/telemetry/shared/item"
      
      attr_reader :data, :character, :item, :_V, :_D, :_T

      def initialize(args)
        @data = args
        @character = Character.new(args["Character"])
        @item = Item.new(args["Item"])
        @_V = args["_V"]
        @_D = args["_D"]
        @_T = args["_T"]
      end
    end
  end
end