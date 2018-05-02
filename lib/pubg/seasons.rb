module PUBG
  class Seasons

    def initialize(args)
      @args = args
    end

    def data
      @args["data"]
    end

    def links
      @args["links"]
    end

    def meta
      @args["meta"]
    end
  end
end