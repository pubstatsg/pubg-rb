require "spec_helper"
RSpec.describe PUBG::Player do
  let(:players) { @pubg.players("match_id") }
  
  describe "has data" do  
    it "data" do
      expect(players.data).not_to be nil
    end

    it "links" do
      expect(players.links).not_to be nil
    end

    it "meta" do
      expect(players.meta).not_to be nil
    end

    describe "can read data" do
      it "data" do
        expect(players.data.count).to eq(2)
      end

      it "name" do
        expect(players.data.first.attributes.name).to eq("ImAverageSniper")
      end
    end
  end
end
