module PUBG
  class Player
    class Data
      require "pubg/player/data/links"
      require "pubg/player/data/attributes"

      def initialize(args)
        @args = args
      end

      def type
        @args["type"]
      end

      def id
        @args["id"]
      end

      def attributes
        Attributes.new(@args["attributes"])
      end

      def relationships
        
      end

      def links
        Links.new(@args["links"])
      end
    end
  end
end