module PUBG
  class Player
    class Season
      class Data
        class Relationships
          class Season
            def initialize(args)
              @args = args
            end

            def type
              @args["data"]["type"]
            end

            def id
              @args["data"]["id"]
            end
          end
        end
      end
    end
  end
end