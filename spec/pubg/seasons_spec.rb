require "spec_helper"
RSpec.describe PUBG::Seasons do
  let(:seasons) { @pubg.seasons }
  
  describe "has data" do  
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
end
