require 'spec_helper'

describe "nyyms/new" do
  before(:each) do
    assign(:nyym, stub_model(Nyym,
      :name => "MyString",
      :email => "MyString",
      :age => 1,
      :school => "MyString",
      :teacher_name => "MyString",
      :teacher_email => "MyString",
      :voice_part => "MyString",
      :phone_number => "MyString",
      :has_paid => false
    ).as_new_record)
  end

  it "renders new nyym form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nyyms_path, :method => "post" do
      assert_select "input#nyym_name", :name => "nyym[name]"
      assert_select "input#nyym_email", :name => "nyym[email]"
      assert_select "input#nyym_age", :name => "nyym[age]"
      assert_select "input#nyym_school", :name => "nyym[school]"
      assert_select "input#nyym_teacher_name", :name => "nyym[teacher_name]"
      assert_select "input#nyym_teacher_email", :name => "nyym[teacher_email]"
      assert_select "input#nyym_voice_part", :name => "nyym[voice_part]"
      assert_select "input#nyym_phone_number", :name => "nyym[phone_number]"
      assert_select "input#nyym_has_paid", :name => "nyym[has_paid]"
    end
  end
end
