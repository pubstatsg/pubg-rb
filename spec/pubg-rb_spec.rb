RSpec.describe PUBG do
  it "has a version number" do
    expect(PUBG::VERSION).not_to be nil
  end

  it 'should set the api_key and platform_region' do
    pubg = PUBG::Client.new("ultra_key", "xbox-na")

    expect(pubg.api_key).to eq('ultra_key')
    expect(pubg.platform_region).to eq('xbox-na')
  end
end
