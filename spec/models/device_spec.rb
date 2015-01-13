require "rails_helper"

RSpec.describe Device do
  let(:device) { FactoryGirl.create(:device) }

  it "should transistion from en_route to received" do
    device.receive
    expect(device.state).to eq("received")
  end

  it "should not transition from en_route to repaired" do
    expect{ device.repair! }.to raise_error(StateMachine::InvalidTransition)
  end
end
