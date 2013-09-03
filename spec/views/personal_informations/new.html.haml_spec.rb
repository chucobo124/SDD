require 'spec_helper'

describe "personal_informations/new" do
  before(:each) do
    assign(:personal_information, stub_model(PersonalInformation,
      :Id_Number => ""
    ).as_new_record)
  end

  it "renders new personal_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", personal_informations_path, "post" do
      assert_select "input#personal_information_Id_Number[name=?]", "personal_information[Id_Number]"
    end
  end
end
