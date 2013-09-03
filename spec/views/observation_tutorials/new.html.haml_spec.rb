require 'spec_helper'

describe "observation_tutorials/new" do
  before(:each) do
    assign(:observation_tutorial, stub_model(ObservationTutorial,
      :learning_ability => "MyString"
    ).as_new_record)
  end

  it "renders new observation_tutorial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", observation_tutorials_path, "post" do
      assert_select "input#observation_tutorial_learning_ability[name=?]", "observation_tutorial[learning_ability]"
    end
  end
end
