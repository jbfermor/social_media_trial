require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      name: "MyString",
      surname1: "MyString",
      surname2: "MyString",
      address: "MyString",
      city: "MyString",
      province: "MyString",
      country: "MyString",
      postal_code: "MyString",
      phone: "MyString",
      user: nil
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[name]"

      assert_select "input[name=?]", "profile[surname1]"

      assert_select "input[name=?]", "profile[surname2]"

      assert_select "input[name=?]", "profile[address]"

      assert_select "input[name=?]", "profile[city]"

      assert_select "input[name=?]", "profile[province]"

      assert_select "input[name=?]", "profile[country]"

      assert_select "input[name=?]", "profile[postal_code]"

      assert_select "input[name=?]", "profile[phone]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
