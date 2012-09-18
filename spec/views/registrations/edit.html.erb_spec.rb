require 'spec_helper'

describe "registrations/edit" do
  before(:each) do
    @registration = assign(:registration, stub_model(Registration,
      :name => "MyString",
      :email => "MyString",
      :students_names => "MyString",
      :school_name => "MyString",
      :school_address => "MyString"
    ))
  end

  it "renders the edit registration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => registrations_path(@registration), :method => "post" do
      assert_select "input#registration_name", :name => "registration[name]"
      assert_select "input#registration_email", :name => "registration[email]"
      assert_select "input#registration_students_names", :name => "registration[students_names]"
      assert_select "input#registration_school_name", :name => "registration[school_name]"
      assert_select "input#registration_school_address", :name => "registration[school_address]"
    end
  end
end