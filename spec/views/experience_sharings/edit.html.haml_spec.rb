require 'spec_helper'

describe "experience_sharings/edit" do
  before(:each) do
    @experience_sharing = assign(:experience_sharing, stub_model(ExperienceSharing,
      :ES_context => ""
    ))
  end

  it "renders the edit experience_sharing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", experience_sharing_path(@experience_sharing), "post" do
      assert_select "input#experience_sharing_ES_context[name=?]", "experience_sharing[ES_context]"
    end
  end
end
