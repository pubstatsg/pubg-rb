require "spec_helper"
RSpec.describe PUBG::Status do
  let(:status) { @pubg.status }

  describe "has data" do  
    it "data" do
      expect(status.data).not_to be nil
    end

    it "attributes" do
      expect(status.attributes).not_to be nil
    end
  end
  
  describe "can read" do
    it "version" do
      expect(status.attributes.version).to eq("v9.4.1")
    end

    it "releasedAt" do
      expect(status.attributes.releasedAt).to eq("2018-04-30T18:34:38Z")
    end
  end
end
