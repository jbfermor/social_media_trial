require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    assign(:profile, create(:profile))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Surname1/)
    expect(rendered).to match(/Surname2/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Province/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Postal code/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(//)
  end
end
