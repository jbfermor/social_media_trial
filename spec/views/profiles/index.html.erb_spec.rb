require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        name: "Name",
        surname1: "Surname1",
        surname2: "Surname2",
        address: "Address",
        city: "City",
        province: "Province",
        country: "Country",
        postal_code: "Postal Code",
        phone: "Phone",
        user: nil
      ),
      Profile.create!(
        name: "Name",
        surname1: "Surname1",
        surname2: "Surname2",
        address: "Address",
        city: "City",
        province: "Province",
        country: "Country",
        postal_code: "Postal Code",
        phone: "Phone",
        user: nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Surname1".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Surname2".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Province".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Country".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Postal Code".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
