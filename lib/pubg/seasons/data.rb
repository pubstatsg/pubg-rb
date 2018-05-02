module PUBG
  class Seasons
    class Data
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

      class Attributes
        def initialize(args)
          @args = args
        end

        def isCurrentSeason
          @args["isCurrentSeason"]
        end

        def isOffseason
          @args["isOffseason"]
        end
      end
    end
  end
end