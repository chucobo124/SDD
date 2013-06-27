require 'spec_helper'

describe "experience_sharings/new" do
  before(:each) do
    assign(:experience_sharing, stub_model(ExperienceSharing,
      :ES_context => ""
    ).as_new_record)
  end

  it "renders new experience_sharing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", experience_sharings_path, "post" do
      assert_select "input#experience_sharing_ES_context[name=?]", "experience_sharing[ES_context]"
    end
  end
end
