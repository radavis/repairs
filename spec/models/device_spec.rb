require "rails_helper"

RSpec.describe Device do
  let(:device) { FactoryGirl.create(:device) }

  it "should transistion from en_route to received" do
    device.receive
    expect(device.state).to eq(:received)
  end
end
