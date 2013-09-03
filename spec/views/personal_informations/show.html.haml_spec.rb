require 'spec_helper'

describe "personal_informations/show" do
  before(:each) do
    @personal_information = assign(:personal_information, stub_model(PersonalInformation,
      :Id_Number => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
