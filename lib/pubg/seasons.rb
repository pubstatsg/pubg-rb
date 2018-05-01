module PUBG
  class Seasons
    attr_reader :data, :links, :meta

    def initialize(args)
      @data = args["data"]
      @links = args["links"]
      @meta = args["meta"]
    end
  end
end