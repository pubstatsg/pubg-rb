require "spec_helper"
RSpec.describe PUBG::Seasons do
  let(:seasons) { @pubg.seasons }
  
  describe "has data" do
    it "original" do
      expect(seasons.original).not_to be nil
    end

    it "data" do
      expect(seasons.data).not_to be nil
    end

    it "links" do
      expect(seasons.links).not_to be nil
    end

    it "meta" do
      expect(seasons.meta).not_to be nil
    end
  end

  describe "can read data" do
    it "data" do
      expect(seasons.data.count).to eq(1)
    end

    describe "data" do
      let(:season) { seasons.data.first }

      it "type" do
        expect(season.type).to eq("season")
      end

      it "id" do
        expect(season.id).to eq("division.bro.official.xb-pre1")
      end

      describe "attributes" do
        it "isCurrentSeason" do
          expect(season.attributes.isCurrentSeason).to eq(true)
        end

        it "isOffseason" do
          expect(season.attributes.isOffseason).to eq(false)
        end
      end
    end

    it "links" do
      expect(seasons.links.self).to eq("https://api.playbattlegrounds.com/shards/xbox-na/seasons")
    end
  end
end
