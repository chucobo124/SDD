require 'spec_helper'

describe "experience_sharings/show" do
  before(:each) do
    @experience_sharing = assign(:experience_sharing, stub_model(ExperienceSharing,
      :ES_context => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
