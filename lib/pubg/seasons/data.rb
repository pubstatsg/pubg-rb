module PUBG
  class Seasons
    class Data
      require "pubg/seasons/data/attributes"

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
    end
  end
end