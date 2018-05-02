module PUBG
  class Seasons
    require "pubg/seasons/data"
    require "pubg/seasons/links"

    def initialize(args)
      @args = args
    end

    def original
      @args
    end

    def data
      d = []
      @args["data"].each do |data|
        d << Data.new(data)
      end
      d
    end

    def links
      Links.new(@args["links"])
    end

    def meta
      @args["meta"]
    end
  end
end