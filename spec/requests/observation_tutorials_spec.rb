require 'spec_helper'

describe "ObservationTutorials" do
  describe "GET /observation_tutorials" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get observation_tutorials_path
      response.status.should be(200)
    end
  end
end
