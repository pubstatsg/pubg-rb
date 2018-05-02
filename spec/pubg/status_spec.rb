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

  it "has version" do
    expect(status.attributes.version).to eq("v9.4.1")
  end
end
