require 'spec_helper'

describe "observation_tutorials/index" do
  before(:each) do
    assign(:observation_tutorials, [
      stub_model(ObservationTutorial,
        :learning_ability => "Learning Ability"
      ),
      stub_model(ObservationTutorial,
        :learning_ability => "Learning Ability"
      )
    ])
  end

  it "renders a list of observation_tutorials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Learning Ability".to_s, :count => 2
  end
end
