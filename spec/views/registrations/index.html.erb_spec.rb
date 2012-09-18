require 'spec_helper'

describe "registrations/index" do
  before(:each) do
    assign(:registrations, [
      stub_model(Registration,
        :name => "Name",
        :email => "Email",
        :students_names => "Students Names",
        :school_name => "School Name",
        :school_address => "School Address"
      ),
      stub_model(Registration,
        :name => "Name",
        :email => "Email",
        :students_names => "Students Names",
        :school_name => "School Name",
        :school_address => "School Address"
      )
    ])
  end

  it "renders a list of registrations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Students Names".to_s, :count => 2
    assert_select "tr>td", :text => "School Name".to_s, :count => 2
    assert_select "tr>td", :text => "School Address".to_s, :count => 2
  end
end
