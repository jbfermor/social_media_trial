require 'rails_helper'

RSpec.describe "posts/edit", type: :view do

  let(:user) { create(:user) }
  
  let(:post) {
    create(:post, user_id: user.id)
  }

  before(:each) do
    assign(:post, post)
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(post), "post" do

      assert_select "input[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[text]"

      assert_select "input[name=?]", "post[user_id]"
    end
  end
end
