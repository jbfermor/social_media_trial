require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  let(:profile) {
    Profile.create!(
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
    )
  }

  before(:each) do
    assign(:profile, profile)
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(profile), "post" do

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
