require "spec_helper"
RSpec.describe PUBG::Player do
  let(:player) { @pubg.player("player_id") }
  
  describe "has data" do  
    it "data" do
      expect(player.data).not_to be nil
    end

    it "links" do
      expect(player.links).not_to be nil
    end

    it "meta" do
      expect(player.meta).to be nil
    end

    it "player" do
      expect(player.player).not_to be nil
    end

    it "playerId" do
      expect(player.playerId).not_to be nil
    end

    it "matches" do
      expect(player.matches).not_to be nil
    end
  end
end
