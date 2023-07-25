require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    assign(:post, create(:post))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
