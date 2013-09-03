require 'spec_helper'

describe "observation_tutorials/show" do
  before(:each) do
    @observation_tutorial = assign(:observation_tutorial, stub_model(ObservationTutorial,
      :learning_ability => "Learning Ability"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Learning Ability/)
  end
end
