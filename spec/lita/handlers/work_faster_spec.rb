require "spec_helper"

describe Lita::Handlers::WorkFaster, lita_handler: true do
  it { routes_command("hey").to(:work_faster) }

  describe "hey" do
    it "should return a response" do
      send_command("hey")
      expect(replies.last).to eq "@all, WORK FASTER"
    end
  end

end
