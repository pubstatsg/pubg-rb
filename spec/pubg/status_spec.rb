require "spec_helper"
RSpec.describe PUBG::Status do
  let(:status) { @pubg.status }

  describe "has data" do  
    it "original" do
      expect(status.original).not_to be nil
    end

    it "data" do
      expect(status.data).not_to be nil
    end
  end
  
  describe "can read data" do
    it "type" do
      expect(status.data.type).to eq("status")
    end

    it "id" do
      expect(status.data.id).to eq("pubg-api")
    end

    describe "attributes" do
      it "releasedAt" do
        expect(status.data.attributes.releasedAt).to eq("2018-04-30T18:34:38Z")
      end

      it "version" do
        expect(status.data.attributes.version).to eq("v9.4.1")
      end
    end
  end
end
