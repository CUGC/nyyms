require 'spec_helper'

describe "nyyms/index" do
  before(:each) do
    assign(:nyyms, [
      stub_model(Nyym,
        :name => "Name",
        :email => "Email",
        :age => 1,
        :school => "School",
        :teacher_name => "Teacher Name",
        :teacher_email => "Teacher Email",
        :voice_part => "Voice Part",
        :phone_number => "Phone Number",
        :has_paid => false
      ),
      stub_model(Nyym,
        :name => "Name",
        :email => "Email",
        :age => 1,
        :school => "School",
        :teacher_name => "Teacher Name",
        :teacher_email => "Teacher Email",
        :voice_part => "Voice Part",
        :phone_number => "Phone Number",
        :has_paid => false
      )
    ])
  end

  it "renders a list of nyyms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Teacher Name".to_s, :count => 2
    assert_select "tr>td", :text => "Teacher Email".to_s, :count => 2
    assert_select "tr>td", :text => "Voice Part".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
