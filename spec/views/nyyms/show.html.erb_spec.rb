require 'spec_helper'

describe "nyyms/show" do
  before(:each) do
    @nyym = assign(:nyym, stub_model(Nyym,
      :name => "Name",
      :email => "Email",
      :age => 1,
      :school => "School",
      :teacher_name => "Teacher Name",
      :teacher_email => "Teacher Email",
      :voice_part => "Voice Part",
      :phone_number => "Phone Number",
      :has_paid => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/1/)
    rendered.should match(/School/)
    rendered.should match(/Teacher Name/)
    rendered.should match(/Teacher Email/)
    rendered.should match(/Voice Part/)
    rendered.should match(/Phone Number/)
    rendered.should match(/false/)
  end
end
