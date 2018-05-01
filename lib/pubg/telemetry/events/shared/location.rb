module PUBG
  class Telemetry
    class Character
      class Location
        attr_reader :x, :y, :z

        def initialize(args)
          @x = args["X"]
          @y = args["Y"]
          @z = args["Z"]
        end
      end
    end
  end
end