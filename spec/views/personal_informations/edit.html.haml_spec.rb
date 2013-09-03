require 'spec_helper'

describe "personal_informations/edit" do
  before(:each) do
    @personal_information = assign(:personal_information, stub_model(PersonalInformation,
      :Id_Number => ""
    ))
  end

  it "renders the edit personal_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", personal_information_path(@personal_information), "post" do
      assert_select "input#personal_information_Id_Number[name=?]", "personal_information[Id_Number]"
    end
  end
end
