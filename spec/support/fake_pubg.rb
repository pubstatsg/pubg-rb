require "sinatra/base"
class FakePubg < Sinatra::Base
  get "/shards/:shard/players/:account_id/seasons/:season_id" do
    json_response 200, "player_season.json"
  end

  get "/shards/:shard/players/:account_id" do
    json_response 200, "player.json"
  end

  get "/shards/:shard/players" do
    json_response 200, "players.json"
  end

  get "/shards/:shard/matches/:match_id" do
    json_response 200, "match.json"
  end

  get "/shards/:shard/seasons" do
    json_response 200, "seasons.json"
  end

  get "/status" do
    json_response 200, "status.json"
  end

  private

  def json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open(File.dirname(__FILE__) + "/fixtures/" + file_name, "rb").read
  end
end