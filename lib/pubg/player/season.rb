module PUBG
  class Player
    class Season
      def initialize(platform_region=$platform_region, player_id, season_id)
        @platform_region = platform_region
        @player_id = player_id
        @season_id = season_id

        @args = get_season
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

      def get_season
        path = "/shards/#{@platform_region}/players/#{@player_id}/seasons/#{@season_id}"
        Client.request(path)
      end
    end
  end
end