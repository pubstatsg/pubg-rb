require "spec_helper"
RSpec.describe PUBG::Match do
  let(:match) { @pubg.match("match_id") }
  
  describe "has data" do  
    it "data" do
      expect(match.data).not_to be nil
    end

    it "included" do
      expect(match.included).not_to be nil
    end

    it "links" do
      expect(match.links).not_to be nil
    end

    it "meta" do
      expect(match.meta).not_to be nil
    end

    it "telemetry" do
      expect(match.telemetry).not_to be nil
    end

    it "participants" do
      expect(match.participants).not_to be nil
    end

    it "roster" do
      expect(match.roster).not_to be nil
    end
  end
end
