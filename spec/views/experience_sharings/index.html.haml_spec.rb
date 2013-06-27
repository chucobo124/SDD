require 'spec_helper'

describe "experience_sharings/index" do
  before(:each) do
    assign(:experience_sharings, [
      stub_model(ExperienceSharing,
        :ES_context => ""
      ),
      stub_model(ExperienceSharing,
        :ES_context => ""
      )
    ])
  end

  it "renders a list of experience_sharings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
