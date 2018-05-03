module PUBG
  class Player
    class Links
      def initialize(args)
        @args = args
      end

      def self
        @args["self"]
      end
    end
  end
end