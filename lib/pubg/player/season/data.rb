module PUBG
  class Player
    class Season
      class Data
        require "pubg/player/season/data/attributes"
        require "pubg/player/season/data/relationships"

        def initialize(args)
          @args = args
        end

        def type
          @args["type"]
        end

        def attributes
          Attributes.new(@args["attributes"])
        end

        def relationships
          Relationships.new(@args["relationships"])
        end
      end
    end
  end
end