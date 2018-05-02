module PUBG
  class Status
    class Data
      require "pubg/status/attributes"

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