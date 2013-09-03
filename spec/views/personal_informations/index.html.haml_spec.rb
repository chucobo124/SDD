require 'spec_helper'

describe "personal_informations/index" do
  before(:each) do
    assign(:personal_informations, [
      stub_model(PersonalInformation,
        :Id_Number => ""
      ),
      stub_model(PersonalInformation,
        :Id_Number => ""
      )
    ])
  end

  it "renders a list of personal_informations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
