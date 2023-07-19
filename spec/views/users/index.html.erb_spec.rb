require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    user = build_stubbed(:user)
    user2 = build_stubbed(:user, name: "pepe")
    assign(:users, [user, user2])
  end

  it "renders a list of users" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
