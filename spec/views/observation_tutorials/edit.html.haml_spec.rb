require 'spec_helper'

describe "observation_tutorials/edit" do
  before(:each) do
    @observation_tutorial = assign(:observation_tutorial, stub_model(ObservationTutorial,
      :learning_ability => "MyString"
    ))
  end

  it "renders the edit observation_tutorial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", observation_tutorial_path(@observation_tutorial), "post" do
      assert_select "input#observation_tutorial_learning_ability[name=?]", "observation_tutorial[learning_ability]"
    end
  end
end
