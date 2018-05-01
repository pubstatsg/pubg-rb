module PUBG
  class Telemetry
    class Weapon
      attr_reader :data, :itemid, :stackcount, :category, :subcategory, :attacheditems

      def initialize(args)
        @data = args
        @itemid = args["ItemId"]
        @stackcount = args["StackCount"]
        @category = args["Category"]
        @subcategory = args["SubCategory"]
        @attacheditems = args["AttachedItems"]
      end
    end
  end
end