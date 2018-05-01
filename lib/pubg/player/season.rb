module PUBG
  class Player
    class Season
      attr_reader :data, :links, :meta

      def initialize(platform_region=$platform_region, player_id, season_id)
        @platform_region = platform_region
        @player_id = player_id
        @season_id = season_id

        @data = nil
        @links = nil
        @meta = nil

        get_season
      end

      def get_season
        path = "/shards/#{@platform_region}/players/#{@player_id}/seasons/#{@season_id}"
        season = Client.request(path)
        @data = season["data"]
        @links = season["links"]
        @meta = season["meta"]
      end
    end
  end
end