require 'rails_helper'


# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/posts", type: :request do

  login
  
  # This should return the minimal set of attributes required to create a valid
  # Post. As you add validations to Post, be sure to
  # adjust the attributes here as well.

  let!(:posted){ create(:post) }

  let(:attr){ attributes_for(:post) }

  let(:valid_attributes) {
    {title: "title",
    text: "text",
    user: user}
  }

  let(:invalid_attributes) {
    # skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      get posts_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      get post_url(posted)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_post_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      get edit_post_url(posted)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Post" do
        post posts_url, params: { post: :attr }
        expect(response).to change(Post, :count).by(1)
      end

      it "redirects to the created post" do
        post posts_url, params: { post: :attr }
        expect(response).to redirect_to(post_url(Post.last))
      end
    end

    # context "with invalid parameters" do
    #   it "does not create a new Post" do
    #     expect {
    #       post posts_url, params: { post: invalid_attributes }
    #     }.to change(Post, :count).by(0)
    #   end

    
    #   it "renders a response with 422 status (i.e. to display the 'new' template)" do
    #     post posts_url, params: { post: invalid_attributes }
    #     expect(response).to have_http_status(:unprocessable_entity)
    #   end
    
    # end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {title: "Modified_title"}
      }

      it "updates the requested post" do
        patch post_url(posted), params: { post: new_attributes }
        posted.reload
        expect(post.title).to eq("Modified_title")
      end

      it "redirects to the post" do
        patch post_url(posted), params: { post: new_attributes }
        posted.reload
        expect(response).to redirect_to(post_url(post))
      end
    end

    # context "with invalid parameters" do
    
    #   it "renders a response with 422 status (i.e. to display the 'edit' template)" do
    #     patch post_url(posted), params: { post: invalid_attributes }
    #     expect(response).to have_http_status(:unprocessable_entity)
    #   end
    
    # end
  end

  describe "DELETE /destroy" do
    it "destroys the requested post" do
      expect {
        delete post_url(posted)
      }.to change(Post, :count).by(-1)
    end

    it "redirects to the posts list" do
      delete post_url(posted)
      expect(response).to redirect_to(posts_url)
    end
  end
end