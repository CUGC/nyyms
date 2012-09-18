require 'spec_helper'

describe "registrations/show" do
  before(:each) do
    @registration = assign(:registration, stub_model(Registration,
      :name => "Name",
      :email => "Email",
      :students_names => "Students Names",
      :school_name => "School Name",
      :school_address => "School Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Students Names/)
    rendered.should match(/School Name/)
    rendered.should match(/School Address/)
  end
end
